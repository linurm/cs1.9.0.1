.class public Lzj/zfenlly/gua/WifiStatusLoader;
.super Ljava/lang/Object;
.source "WifiStatusLoader.java"


# static fields
.field private static sInstance:Lzj/zfenlly/gua/WifiStatusLoader;


# instance fields
.field private isStartApp:Z

.field private isStartVpn:Z

.field private mContext:Landroid/content/Context;

.field private mFloatView:Lzj/zfenlly/gua/FloatView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 21
    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    .line 24
    iput-object p1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lzj/zfenlly/gua/WifiStatusLoader;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/WifiStatusLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    .line 31
    :cond_0
    sget-object v0, Lzj/zfenlly/gua/WifiStatusLoader;->sInstance:Lzj/zfenlly/gua/WifiStatusLoader;

    return-object v0
.end method


# virtual methods
.method public StartAPP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    if-eqz v0, :cond_1

    .line 73
    iput-boolean v1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    .line 74
    invoke-virtual {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->startVpn()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    if-eqz v0, :cond_0

    .line 77
    iput-boolean v1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 78
    invoke-virtual {p0, v1, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startO(II)V

    goto :goto_0
.end method

.method public WifiDisableDisplay()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 60
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    sget v1, Lzj/zfenlly/gua/RFile/Rfile;->wifi_off:I

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public WifiEnableDisplay()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 67
    iget-object v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    sget v1, Lzj/zfenlly/gua/RFile/Rfile;->wifi_on:I

    invoke-virtual {v0, v1}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public isStartVpn()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    return v0
.end method

.method public setIsStartAPP()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 49
    return-void
.end method

.method public setIsStopAPP()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartApp:Z

    .line 54
    return-void
.end method

.method public setRecentsPanel(Lzj/zfenlly/gua/FloatView;)V
    .locals 0
    .param p1, "fv"    # Lzj/zfenlly/gua/FloatView;

    .prologue
    .line 43
    iput-object p1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mFloatView:Lzj/zfenlly/gua/FloatView;

    .line 44
    return-void
.end method

.method public setStartVpn(Z)V
    .locals 0
    .param p1, "startVpn"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->isStartVpn:Z

    .line 40
    return-void
.end method

.method public startAPP(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "v"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lzj/zfenlly/gua/WifiStatusLoader;->startO(II)V

    .line 85
    return-void
.end method

.method public startO(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "v"    # I

    .prologue
    .line 99
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    const-class v3, Lzj/zfenlly/gua/OverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v2, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public startVpn()V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lzj/zfenlly/gua/activity/Vpn;->vpnPkg:Ljava/lang/String;

    sget-object v3, Lzj/zfenlly/gua/activity/Vpn;->vpnAct:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lzj/zfenlly/gua/WifiStatusLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
