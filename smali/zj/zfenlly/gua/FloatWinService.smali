.class public Lzj/zfenlly/gua/FloatWinService;
.super Landroid/app/Service;
.source "FloatWinService.java"


# static fields
.field private static final ButtonHeight:I = 0x42

.field public static final SET_VIEW_START:I = 0x1

.field public static final SET_VIEW_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FloatWinService"

.field static ns:Lzj/zfenlly/gua/NotifySound;


# instance fields
.field private addCoordinateView:Landroid/widget/Button;

.field private addIntervalView:Landroid/widget/Button;

.field private addTimesView:Landroid/widget/Button;

.field private add_flag:Z

.field private after10minites:Landroid/widget/Button;

.field private after1hour:Landroid/widget/Button;

.field private afterhalfhour:Landroid/widget/Button;

.field private before10minites:Landroid/widget/Button;

.field private before1hour:Landroid/widget/Button;

.field private beforehalfhour:Landroid/widget/Button;

.field private click_interval:I

.field private click_times:I

.field private ct:Lzj/zfenlly/gua/ClickThread;

.field private delIntervalView:Landroid/widget/Button;

.field private delTimesView:Landroid/widget/Button;

.field private floatView:Lzj/zfenlly/gua/FloatView;

.field private isOnExpandView:Z

.field mContext:Landroid/content/Context;

.field mDownFloatLayout:Landroid/widget/LinearLayout;

.field mFloatLayout:Landroid/widget/LinearLayout;

.field mFloatLayout2:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field mMidFloatLayout:Landroid/widget/LinearLayout;

.field private mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

.field mUpFloatLayout:Landroid/widget/LinearLayout;

.field private mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

.field mWindowManager:Landroid/view/WindowManager;

.field private refreshView:Landroid/widget/Button;

.field private settingsView:Landroid/widget/Button;

.field private settings_flag:Z

.field private start18ClickView:Landroid/widget/Button;

.field private start3ClickView:Landroid/widget/Button;

.field private start7ClickView:Landroid/widget/Button;

.field private startClickView:Landroid/widget/Button;

.field private timeSettingView:Landroid/widget/Button;

.field private wifiControlView:Landroid/widget/Button;

.field wmParams:Landroid/view/WindowManager$LayoutParams;

.field wmParams2:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lzj/zfenlly/gua/NotifySound;

    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    sput-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    .line 47
    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    .line 64
    new-instance v0, Lzj/zfenlly/gua/FloatWinService$1;

    invoke-direct {v0, p0}, Lzj/zfenlly/gua/FloatWinService$1;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    .line 85
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 86
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 90
    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    .line 91
    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    return-void
.end method

.method private StartClick(I)V
    .locals 6
    .param p1, "t"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    iget-boolean v0, v0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    invoke-virtual {v0}, Lzj/zfenlly/gua/ClickThread;->stopThread()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    .line 610
    :goto_0
    return-void

    .line 598
    :cond_0
    const/4 v3, 0x0

    .line 599
    .local v3, "cd":Lzj/zfenlly/gua/Coordinate;
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    if-eqz v0, :cond_2

    .line 600
    new-instance v3, Lzj/zfenlly/gua/Coordinate;

    .end local v3    # "cd":Lzj/zfenlly/gua/Coordinate;
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    iget v0, v0, Lzj/zfenlly/gua/TargetFloatView;->x:I

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    iget v1, v1, Lzj/zfenlly/gua/TargetFloatView;->y:I

    invoke-direct {v3, v0, v1}, Lzj/zfenlly/gua/Coordinate;-><init>(II)V

    .line 604
    .restart local v3    # "cd":Lzj/zfenlly/gua/Coordinate;
    :goto_1
    new-instance v0, Lzj/zfenlly/gua/ClickThread;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lzj/zfenlly/gua/TimeSetting;->getTimes(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lzj/zfenlly/gua/TimeSetting;->getInterval(Landroid/content/Context;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    invoke-direct/range {v0 .. v5}, Lzj/zfenlly/gua/ClickThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Lzj/zfenlly/gua/Coordinate;II)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    .line 605
    if-eqz p1, :cond_1

    .line 606
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    invoke-virtual {v0, p1}, Lzj/zfenlly/gua/ClickThread;->setTempTimes(I)V

    .line 608
    :cond_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->ct:Lzj/zfenlly/gua/ClickThread;

    invoke-virtual {v0}, Lzj/zfenlly/gua/ClickThread;->start()V

    goto :goto_0

    .line 602
    :cond_2
    new-instance v3, Lzj/zfenlly/gua/Coordinate;

    .end local v3    # "cd":Lzj/zfenlly/gua/Coordinate;
    invoke-direct {v3}, Lzj/zfenlly/gua/Coordinate;-><init>()V

    .restart local v3    # "cd":Lzj/zfenlly/gua/Coordinate;
    goto :goto_1
.end method

.method static synthetic access$000(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/gua/FloatView;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    return-object v0
.end method

.method static synthetic access$1000(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delView()V

    return-void
.end method

.method static synthetic access$1100(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addSettingsView()V

    return-void
.end method

.method static synthetic access$1200(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addCView()V

    return-void
.end method

.method static synthetic access$1300(Lzj/zfenlly/gua/FloatWinService;I)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lzj/zfenlly/gua/FloatWinService;->StartClick(I)V

    return-void
.end method

.method static synthetic access$1400(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget v0, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    return v0
.end method

.method static synthetic access$1402(Lzj/zfenlly/gua/FloatWinService;I)I
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    return p1
.end method

.method static synthetic access$1500(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lzj/zfenlly/gua/FloatWinService;)I
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget v0, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    return v0
.end method

.method static synthetic access$1702(Lzj/zfenlly/gua/FloatWinService;I)I
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    return p1
.end method

.method static synthetic access$1800(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lzj/zfenlly/gua/FloatWinService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    return v0
.end method

.method static synthetic access$300(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->addExpandView()V

    return-void
.end method

.method static synthetic access$400(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delExpandView()V

    return-void
.end method

.method static synthetic access$500(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    return v0
.end method

.method static synthetic access$600(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    return-void
.end method

.method static synthetic access$700(Lzj/zfenlly/gua/FloatWinService;)Z
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    return v0
.end method

.method static synthetic access$702(Lzj/zfenlly/gua/FloatWinService;Z)Z
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    return p1
.end method

.method static synthetic access$800(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    return-void
.end method

.method static synthetic access$900(Lzj/zfenlly/gua/FloatWinService;)Lzj/zfenlly/wifi/WifiAdmin;
    .locals 1
    .param p0, "x0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 29
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    return-object v0
.end method

.method private addCView()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 641
    iput-boolean v4, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 642
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    .line 643
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 644
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 646
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 657
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 659
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x258

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 660
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0xc8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 662
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 663
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 664
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    .line 665
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 668
    .local v0, "mFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 670
    new-instance v1, Lzj/zfenlly/gua/TargetFloatView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->mzParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lzj/zfenlly/gua/TargetFloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    .line 672
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->mz:I

    invoke-virtual {v1, v2}, Lzj/zfenlly/gua/TargetFloatView;->setImageResource(I)V

    .line 673
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mTargetFloatView:Lzj/zfenlly/gua/TargetFloatView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 674
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    return-void
.end method

.method private addExpandView()V
    .locals 4

    .prologue
    const/high16 v3, 0x42840000    # 66.0f

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    .line 326
    const-string/jumbo v1, "FloatWinService"

    const-string/jumbo v2, "addExpandView"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    .line 328
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    const-string/jumbo v2, "WIFI"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 329
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    .line 330
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    const-string/jumbo v2, "Set"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 331
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 332
    invoke-static {v1, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 333
    invoke-static {v2, v3}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 335
    .local v0, "p":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 337
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 338
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$3;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$3;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    .line 352
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    const-string/jumbo v2, "Time"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 355
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 356
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$4;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$4;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$5;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$5;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    .line 383
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    const-string/jumbo v2, "F5"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 386
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 387
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$6;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$6;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    .line 400
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    const-string/jumbo v2, "[ + ]"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 403
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->abs__bright_foreground_disabled_holo_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 404
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$7;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$7;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    .line 418
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    const-string/jumbo v2, "N"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 421
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 422
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$8;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$8;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    .line 435
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    const-string/jumbo v2, "18"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 438
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 439
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$9;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$9;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    .line 452
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    const-string/jumbo v2, "7"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 455
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 456
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$10;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$10;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    .line 469
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 472
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 473
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$11;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$11;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    .line 486
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    const-string/jumbo v2, "+ h"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 489
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 490
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$12;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$12;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    .line 499
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    const-string/jumbo v2, "- h"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 502
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 503
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$13;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$13;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    .line 512
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    const-string/jumbo v2, "+ 30m"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 515
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 516
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$14;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$14;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    .line 525
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    const-string/jumbo v2, "- 30m"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 528
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 529
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$15;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$15;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    .line 540
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    const-string/jumbo v2, "- 10m"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 543
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 544
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$16;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$16;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    .line 554
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    const-string/jumbo v2, "+ 10m"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->button_shape:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 557
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 558
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$17;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$17;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->before10minites:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->after10minites:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 568
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->afterhalfhour:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->beforehalfhour:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    :cond_0
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->refreshView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addCoordinateView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 579
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 580
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->settingsView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 583
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 585
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 587
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 590
    :cond_1
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 591
    return-void
.end method

.method private addSettingsView()V
    .locals 5

    .prologue
    const/high16 v4, 0x42840000    # 66.0f

    .line 684
    const/4 v1, 0x1

    iput-boolean v1, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 685
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xc8

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 689
    .local v0, "p":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    .line 690
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lzj/zfenlly/gua/TimeSetting;->getTimes(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    .line 691
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 693
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 694
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$18;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$18;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 709
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    .line 710
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 712
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 713
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$19;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$19;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 732
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    .line 733
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lzj/zfenlly/gua/TimeSetting;->getInterval(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    .line 734
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 736
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 737
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$20;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$20;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    .line 753
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lzj/zfenlly/gua/FloatWinService;->click_interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 755
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 756
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    new-instance v2, Lzj/zfenlly/gua/FloatWinService$21;

    invoke-direct {v2, p0}, Lzj/zfenlly/gua/FloatWinService$21;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    const-string/jumbo v1, "TAG"

    const-string/jumbo v2, "add settings view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void
.end method

.method private createView(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 217
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    .line 219
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 220
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 221
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 223
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 226
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 228
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0xc8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 229
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x64

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 231
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 232
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 234
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 235
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v0, "mFloatLayoutLP":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 240
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    .line 243
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 246
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    .line 247
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 250
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    .line 251
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 253
    new-instance v2, Lzj/zfenlly/gua/FloatView;

    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v4, v5, v6}, Lzj/zfenlly/gua/FloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    .line 254
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {v2, v7}, Lzj/zfenlly/gua/FloatView;->setbClickable(Z)V

    .line 255
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    new-instance v3, Lzj/zfenlly/gua/FloatWinService$2;

    invoke-direct {v3, p0}, Lzj/zfenlly/gua/FloatWinService$2;-><init>(Lzj/zfenlly/gua/FloatWinService;)V

    invoke-virtual {v2, v3}, Lzj/zfenlly/gua/FloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    invoke-virtual {v2}, Lzj/zfenlly/wifi/WifiAdmin;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->wifi_on:I

    invoke-virtual {v2, v3}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    .line 282
    :goto_0
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    invoke-static {p0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v1

    .line 286
    .local v1, "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    invoke-virtual {v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->setRecentsPanel(Lzj/zfenlly/gua/FloatView;)V

    .line 287
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lzj/zfenlly/gua/FloatWinService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    const-string/jumbo v2, "addCView"

    const-string/jumbo v3, "add cview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 279
    .end local v1    # "mWifiStatusLoader":Lzj/zfenlly/gua/WifiStatusLoader;
    :cond_1
    iget-object v2, p0, Lzj/zfenlly/gua/FloatWinService;->floatView:Lzj/zfenlly/gua/FloatView;

    sget v3, Lzj/zfenlly/gua/RFile/Rfile;->wifi_off:I

    invoke-virtual {v2, v3}, Lzj/zfenlly/gua/FloatView;->setImageResource(I)V

    goto :goto_0
.end method

.method private delCView()V
    .locals 2

    .prologue
    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 679
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 680
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout2:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 681
    return-void
.end method

.method private delExpandView()V
    .locals 2

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    .line 293
    const-string/jumbo v0, "FloatWinService"

    const-string/jumbo v1, "delExpandView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->startClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start18ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start7ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->start3ClickView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->timeSettingView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mMidFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->wifiControlView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 300
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->before1hour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->after1hour:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 305
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->isViewOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mUpFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 310
    return-void
.end method

.method private delSettingsView()V
    .locals 2

    .prologue
    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 777
    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "del settings view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delTimesView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 779
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addTimesView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 780
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->addIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 781
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mDownFloatLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->delIntervalView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 782
    return-void
.end method

.method private delView()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->isOnExpandView:Z

    if-eqz v0, :cond_1

    .line 314
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delExpandView()V

    .line 315
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    .line 317
    :cond_0
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    if-eqz v0, :cond_1

    .line 318
    const-string/jumbo v0, "[ - ]"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    .line 322
    :cond_1
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initViewBox(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    return-void
.end method

.method private mzParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 614
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 615
    .local v0, "wmParamsmz":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 616
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 618
    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 629
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 631
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 632
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 634
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 635
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 637
    return-object v0
.end method

.method public static playSound()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    const/4 v0, 0x2

    invoke-static {v0}, Lzj/zfenlly/gua/NotifySound;->play(I)V

    .line 105
    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 100
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method isViewOn()Z
    .locals 3

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "isOn":Z
    const/4 v0, 0x1

    .line 211
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "rk3288"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 112
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatWinService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzj/zfenlly/gua/LoadInjectLib;->init(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lzj/zfenlly/wifi/WifiAdmin;

    invoke-direct {v0, p0}, Lzj/zfenlly/wifi/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWifiAdmin:Lzj/zfenlly/wifi/WifiAdmin;

    .line 115
    sget-object v0, Lzj/zfenlly/gua/FloatWinService;->ns:Lzj/zfenlly/gua/NotifySound;

    invoke-static {p0}, Lzj/zfenlly/gua/NotifySound;->init(Landroid/content/Context;)Lzj/zfenlly/gua/NotifySound;

    .line 116
    invoke-direct {p0, p0}, Lzj/zfenlly/gua/FloatWinService;->createView(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 788
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 789
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 790
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatWinService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 791
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    if-eqz v0, :cond_0

    .line 792
    iput-boolean v2, p0, Lzj/zfenlly/gua/FloatWinService;->add_flag:Z

    .line 793
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delCView()V

    .line 795
    :cond_0
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    if-eqz v0, :cond_1

    .line 796
    iput-boolean v2, p0, Lzj/zfenlly/gua/FloatWinService;->settings_flag:Z

    .line 797
    invoke-direct {p0}, Lzj/zfenlly/gua/FloatWinService;->delSettingsView()V

    .line 799
    :cond_1
    return-void
.end method

.method setRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    .line 202
    return-void
.end method

.method setTimeAfter10Minites()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    .line 136
    return-void
.end method

.method setTimeAfter1Hour()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    .line 148
    return-void
.end method

.method setTimeAfter30Minites()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    .line 140
    return-void
.end method

.method setTimeBefore10Minites()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0xa

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    .line 132
    return-void
.end method

.method setTimeBefore1Hour()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0x3c

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    .line 206
    return-void
.end method

.method setTimeBefore30Minites()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lzj/zfenlly/gua/WifiStatusLoader;->getInstance(Landroid/content/Context;)Lzj/zfenlly/gua/WifiStatusLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0x1e

    invoke-virtual {v0, v1, v2}, Lzj/zfenlly/gua/WifiStatusLoader;->startAPP(II)V

    .line 144
    return-void
.end method
