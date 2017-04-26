<%@ WebHandler Language="C#" Class="VerificationCode" %>

using System;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;
using System.Text;
using System.Web.SessionState;
public class VerificationCode : IHttpHandler, IRequiresSessionState /*加上这个接口，否则不能读写Session*/
{
    #region 私有成员

    string code;     //验证码  
    int codeLength = 4;    //验证码长度  
    int width = 70;   //图片宽度  
    int height = 25;   //图片高度  
    int fontSize = 14;    //验证码字体大小  
    static char[] Chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();     //字符集  

    //画刷  
    static Brush[] BrushItems = new Brush[]{  
        Brushes.OliveDrab,  
        Brushes.ForestGreen,  
        Brushes.DarkCyan,  
        Brushes.LightSlateGray,  
        Brushes.RoyalBlue,  
        Brushes.SlateBlue,  
        Brushes.DarkViolet,  
        Brushes.MediumVioletRed,  
        Brushes.IndianRed,  
        Brushes.Firebrick,  
        Brushes.Chocolate,  
        Brushes.Peru,  
        Brushes.Goldenrod  
    };

    //字体  
    static string[] FontItems = new string[]{  
        "Arial",   
        "Helvetica",   
        "Geneva",   
        "sans-serif",   
        "Verdana"  
    };

    #endregion

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "image/jpeg";
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);    //不缓存图片  
        code = MakeCode(codeLength);     //生成验证码  
        context.Session["VerificationCode"] = code;    //将验证码存入Session  
        Bitmap bmp = new Bitmap(width, height);
        Graphics g = Graphics.FromImage(bmp);
        DrawBackground(g);   //绘制背景  
        Font font = MakeFont();
        Brush brush = MakeBrush();
        g.DrawString(code, font, brush, 3, 3); //绘制验证码字符串  
        DrawStain(bmp, 0.08);     //绘制噪声点  
        bmp.Save(context.Response.OutputStream, ImageFormat.Jpeg);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
    /// <summary>  
    /// 生成指定位数的随机验证码字符串  
    /// </summary>  
    /// <param name="length">验证码长度</param>  
    /// <returns>验证码字符串</returns>  
    private string MakeCode(int length)
    {
        StringBuilder s = new StringBuilder();
        Random r = new Random();
        //生成随机字符串  
        for (int i = 0; i < length; ++i)
        {
            int index = r.Next(Chars.Length);
            s.Append(Chars[index]);
        }
        return s.ToString();
    }
    /// <summary>  
    /// 绘制图片背景  
    /// </summary>  
    /// <param name="g"></param>  
    private void DrawBackground(Graphics g)
    {
        g.Clear(Color.White);
    }
    /// <summary>  
    /// 在位图中绘制指定比例的噪声点  
    /// </summary>  
    /// <param name="bmp"></param>  
    /// <param name="percentage">噪声点所占百分比</param>  
    private void DrawStain(Bitmap bmp, double percentage)
    {
        int width = bmp.Width;
        int height = bmp.Height;
        int n = Convert.ToInt32(width * height * percentage);
        Random r = new Random();
        //随机颜色  
        int red = r.Next(255);
        int green = r.Next(255);
        int blue = r.Next(255);
        Color color = Color.FromArgb(red, green, blue);
        for (int i = 0; i < n; ++i)
        {
            //随机坐标  
            int x = r.Next(1, width);
            int y = r.Next(1, height);
            bmp.SetPixel(x, y, color);
        }
    }

    /// <summary>  
    /// 生成随机字体格式（字体、字号、字形）  
    /// </summary>  
    /// <returns></returns>  
    private Font MakeFont()
    {
        Random r = new Random();
        int i = r.Next(FontItems.Length);
        string familyName = FontItems[i];    //字体  
        FontStyle fontStyle = GetFontStyle(r.Next(0, 2));   //字形  
        return new Font(familyName, fontSize, fontStyle);
    }

    /// <summary>  
    /// 取得字体样式  
    /// </summary>  
    /// <param name="index">索引，取值0-2</param>  
    /// <returns></returns>  
    private FontStyle GetFontStyle(int index)
    {
        switch (index)
        {
            case 0:
                return FontStyle.Bold;
            case 1:
                return FontStyle.Italic;
            default:
                return FontStyle.Regular;
        }
    }
    /// <summary>  
    /// 生成随机画刷  
    /// </summary>  
    /// <returns></returns>  
    private Brush MakeBrush()
    {
        Random r = new Random();
        int i = r.Next(BrushItems.Length);
        return BrushItems[i];
    }
}  