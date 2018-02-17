.class public Lzj/zfenlly/gua/OtherAPP;
.super Ljava/lang/Object;
.source "OtherAPP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWillStartAPP(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    .line 15
    .local v0, "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    invoke-virtual {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->setIsStartAPP()V

    .line 16
    return-void
.end method

.method public static setWillStartVpn(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    .line 20
    .local v0, "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->setStartVpn(Z)V

    .line 21
    return-void
.end method

.method public static setWillStopAPP(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    .line 25
    .local v0, "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    invoke-virtual {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->setIsStopAPP()V

    .line 26
    return-void
.end method

.method public static startActivity3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lzj/zfenlly/gua/OtherAPP$1;

    invoke-direct {v1, p1, p2, p0}, Lzj/zfenlly/gua/OtherAPP$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    return-void
.end method

.method public static startActivity4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "mContext"    # Landroid/app/Activity;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "v"    # I

    .prologue
    .line 46
    if-eqz p3, :cond_0

    .line 47
    invoke-static {p3}, Lzj/zfenlly/gua/LoadInjectLib;->setTime(I)V

    .line 48
    invoke-static {p3}, Lzj/zfenlly/gua/SystemTime;->setTime(I)V

    .line 50
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    return-void
.end method
