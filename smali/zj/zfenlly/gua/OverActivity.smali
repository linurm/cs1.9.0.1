.class public Lzj/zfenlly/gua/OverActivity;
.super Landroid/app/Activity;
.source "OverActivity.java"


# instance fields
.field private final DEC_SEC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lzj/zfenlly/gua/OverActivity;->DEC_SEC:I

    return-void
.end method


# virtual methods
.method public getLunchActivity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 91
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 92
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "className":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method getStartAppAct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const-string/jumbo v1, "gua"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lzj/zfenlly/gua/OverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "act"

    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getLunchActivity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getStartAppPkg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const-string/jumbo v1, "gua"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lzj/zfenlly/gua/OverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    .local v0, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pkg"

    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lzj/zfenlly/gua/RFile/Rfile;->over_main:I

    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/OverActivity;->setContentView(I)V

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "v":I
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getStartAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lzj/zfenlly/gua/OverActivity;->getStartAppAct()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v1}, Lzj/zfenlly/gua/OtherAPP;->startActivity4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public setTime(I)V
    .locals 8
    .param p1, "t"    # I

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 119
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 120
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Lzj/zfenlly/gua/OverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 122
    :cond_0
    return-void
.end method
