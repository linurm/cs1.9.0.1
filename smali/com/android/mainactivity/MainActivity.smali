.class public Lcom/android/mainactivity/MainActivity;
.super Lcom/ideaworks3d/marmalade/LoaderActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mainactivity/MainActivity$ListenerFactory;,
        Lcom/android/mainactivity/MainActivity$Listener;
    }
.end annotation


# static fields
.field private static final MAIN_ACTIVITY_LISTENER_FACTORY_PACKAGE:Ljava/lang/String; = "com.android.mainactivity.listenerfactory"

.field private static hasShownSplash:Z = true

.field private static final mLogEnabled:Z = false

.field private static final mLogTag:Ljava/lang/String; = "marmalade16"

.field private static onDestroyCalled:Z

.field public static singleton:Lcom/android/mainactivity/MainActivity;

.field private static splashScreenHidden:Z

.field static ns:Lzj/zfenlly/gua/NotifySound;

.field private static vibrator:Landroid/os/Vibrator;

.field public static a:I

# instance fields
.field private advertisingID:Ljava/lang/String;

.field private getAdvertisingIdDone:Z

.field private isLimitAdTrackingEnabled:I

.field public loadingMessages:[Ljava/lang/String;

.field private loadingTextMargin:I

.field public loopLoadingText:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mainactivity/MainActivity$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private m_ImgView:Landroid/widget/ImageView;

.field private m_Spinner:Landroid/widget/ProgressBar;

.field private final m_UiThreadStartLogo:Ljava/lang/Runnable;

.field private final m_UiThreadStopLogo:Ljava/lang/Runnable;

.field private m_loadingMessage:Landroid/widget/TextView;

.field private m_rLayout:Landroid/widget/RelativeLayout;

.field private possibleCrash:I

.field private profilerOn:Z

.field private shouldTrackKey:Z

.field private timerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    sput-boolean v0, Lcom/android/mainactivity/MainActivity;->hasShownSplash:Z

    .line 96
    sput-boolean v0, Lcom/android/mainactivity/MainActivity;->splashScreenHidden:Z

    .line 97
    sput-boolean v0, Lcom/android/mainactivity/MainActivity;->onDestroyCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    .line 102
    iput-object v1, p0, Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;

    .line 103
    iput-object v1, p0, Lcom/android/mainactivity/MainActivity;->advertisingID:Ljava/lang/String;

    .line 104
    iput-boolean v2, p0, Lcom/android/mainactivity/MainActivity;->getAdvertisingIdDone:Z

    .line 105
    iput v2, p0, Lcom/android/mainactivity/MainActivity;->possibleCrash:I

    .line 106
    iput v3, p0, Lcom/android/mainactivity/MainActivity;->isLimitAdTrackingEnabled:I

    .line 107
    iput-boolean v2, p0, Lcom/android/mainactivity/MainActivity;->shouldTrackKey:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/mainactivity/MainActivity;->profilerOn:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/mainactivity/MainActivity;->loopLoadingText:Z

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Connecting to server..."

    aput-object v1, v0, v2

    const-string v1, "Updating game data..."

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Preparing game assets..."

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mainactivity/MainActivity;->loadingMessages:[Ljava/lang/String;

    .line 115
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/mainactivity/MainActivity;->loadingTextMargin:I

    .line 117
    new-instance v0, Lcom/android/mainactivity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mainactivity/MainActivity$1;-><init>(Lcom/android/mainactivity/MainActivity;)V

    iput-object v0, p0, Lcom/android/mainactivity/MainActivity;->m_UiThreadStartLogo:Ljava/lang/Runnable;

    .line 235
    new-instance v0, Lcom/android/mainactivity/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mainactivity/MainActivity$2;-><init>(Lcom/android/mainactivity/MainActivity;)V

    iput-object v0, p0, Lcom/android/mainactivity/MainActivity;->m_UiThreadStopLogo:Ljava/lang/Runnable;

    new-instance v0, Lzj/zfenlly/gua/NotifySound;

    #@7
    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    #@a
    #iput-object v0, p0, Lcom/android/mainactivity/MainActivity;->ns:Lzj/zfenlly/gua/NotifySound;

	new-instance v0, Lzj/zfenlly/gua/NotifySound;

    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    sput-object v0, Lcom/android/mainactivity/MainActivity;->ns:Lzj/zfenlly/gua/NotifySound;
    return-void
.end method

.method private varargs _log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/mainactivity/MainActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/mainactivity/MainActivity;->loadingTextMargin:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/mainactivity/MainActivity;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/android/mainactivity/MainActivity;->loadingTextMargin:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mainactivity/MainActivity;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mainactivity/MainActivity;->getAdvertisingIdDone:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/mainactivity/MainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mainactivity/MainActivity;)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mainactivity/MainActivity;->requiredSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mainactivity/MainActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mainactivity/MainActivity;->doSetImmersiveFullscreenMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->m_Spinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mainactivity/MainActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity;->m_Spinner:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mainactivity/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mainactivity/MainActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mainactivity/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mainactivity/MainActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mainactivity/MainActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mainactivity/MainActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mainactivity/MainActivity;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/mainactivity/MainActivity;->profilerOn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/mainactivity/MainActivity;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mainactivity/MainActivity;->profilerOn:Z

    return p1
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/mainactivity/MainActivity;->splashScreenHidden:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/mainactivity/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity;->advertisingID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/mainactivity/MainActivity;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/android/mainactivity/MainActivity;->isLimitAdTrackingEnabled:I

    return p1
.end method

.method private createListeners()V
    .locals 5

    .prologue
    .line 411
    :try_start_0
    const-string v0, "dex"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 412
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 414
    new-instance v0, Ldalvik/system/DexFile;

    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    const-string v3, "com.android.mainactivity.listenerfactory"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    invoke-virtual {v1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 419
    const-class v3, Lcom/android/mainactivity/MainActivity$ListenerFactory;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$ListenerFactory;

    check-cast v0, Lcom/android/mainactivity/MainActivity$ListenerFactory;

    .line 421
    invoke-virtual {v0}, Lcom/android/mainactivity/MainActivity$ListenerFactory;->makeListener()Lcom/android/mainactivity/MainActivity$Listener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mainactivity/MainActivity;->registerListener(Lcom/android/mainactivity/MainActivity$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    const-string v1, "marmalade17"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :cond_1
    return-void
.end method

.method private doSetImmersiveFullscreenMode()V
    .locals 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 633
    invoke-direct {p0}, Lcom/android/mainactivity/MainActivity;->requiredSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    .line 635
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 637
    return-void
.end method

.method public static getBooleanConfig(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 573
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 574
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 575
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 577
    :goto_0
    return v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 294
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 296
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-byte v0, v2, v1

    .line 301
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 305
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    :goto_2
    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const-string v0, ""

    goto :goto_2
.end method

.method private registerOnSystemUiVisibilityChangeListener()V
    .locals 2

    .prologue
    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/mainactivity/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mainactivity/MainActivity$5;-><init>(Lcom/android/mainactivity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 598
    :cond_0
    return-void
.end method

.method private requiredSystemUiVisibility()I
    .locals 3

    .prologue
    .line 601
    const/4 v0, 0x0

    .line 603
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 604
    const/4 v0, 0x2

    .line 608
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 609
    or-int/lit8 v0, v0, 0x4

    .line 623
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 624
    or-int/lit16 v0, v0, 0x1000

    .line 627
    :cond_2
    return v0
.end method


# virtual methods
.method public elapsedRuntimeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "systemElapsedRuntime"

    invoke-virtual {p0, v0}, Lcom/android/mainactivity/MainActivity;->sharedPreferencesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gameEndKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string v0, "gameEndKey"

    invoke-virtual {p0, v0}, Lcom/android/mainactivity/MainActivity;->sharedPreferencesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gameHasEnteredBackground()V
    .locals 4

    .prologue
    .line 465
    const-string v0, "gameStartPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 466
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->gameEndKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mainactivity/MainActivity;->saveSharedPreferencesKey(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 467
    return-void
.end method

.method public gameHasEnteredForeground()V
    .locals 4

    .prologue
    .line 470
    const-string v0, "gameStartPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->gameEndKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mainactivity/MainActivity;->saveSharedPreferencesKey(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 472
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->stopMyLogo()V

    .line 473
    return-void
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->advertisingID:Ljava/lang/String;

    return-object v0
.end method

.method public hadPossibleCrash()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/android/mainactivity/MainActivity;->possibleCrash:I

    return v0
.end method

.method public isLimitAdTrackingEnabled()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/android/mainactivity/MainActivity;->isLimitAdTrackingEnabled:I

    return v0
.end method

.method public isProfilerStarted()I
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/mainactivity/MainActivity;->profilerOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchReportingTimesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, "launchReportingTimes"

    invoke-virtual {p0, v0}, Lcom/android/mainactivity/MainActivity;->sharedPreferencesKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 476
	invoke-static {p0, p1}, Lzj/zfenlly/gua/MPermissions;->onResult(Landroid/app/Activity;I)V

	
    if-eqz p3, :cond_0

    .line 477
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    .line 479
    const-string v1, "com.facebook.LoginActivity:Result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 499
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$Listener;

    .line 490
    const-string v2, "marmalade18"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult listener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; requestCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; resultCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/mainactivity/MainActivity$Listener;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    const-string v2, "marmalade19"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 498
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V

    
    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0
    
    const/4 v0, 0x0

    sput v0, Lcom/android/mainactivity/MainActivity;->a:I
    
    .locals 12
	invoke-static {p0}, Lzj/zfenlly/gua/MPermissions;->requestPermission(Landroid/app/Activity;)V
	
    #invoke-direct {p0}, Lcom/android/mainactivity/MainActivity;->startFloatWin()V

	invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->vibrateInit()V
    #@a
    .line 104
	sget-object v0, Lcom/android/mainactivity/MainActivity;->ns:Lzj/zfenlly/gua/NotifySound;

    invoke-static {p0}, Lzj/zfenlly/gua/NotifySound;->init(Landroid/content/Context;)Lzj/zfenlly/gua/NotifySound;

    .line 348
    const-string v0, "MainActivity.onCreate()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/android/mainactivity/MainActivity;->_log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    sget-boolean v0, Lcom/android/mainactivity/MainActivity;->onDestroyCalled:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "marmalade20"

    const-string v3, "MainActivity.onCreate() onDestroyCalled = true; restart"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/mainactivity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 352
    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-static {v3, v2, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 353
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 407
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->currentTimeMillis()J

    move-result-wide v4

    .line 358
    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 359
    const-string v0, "%f"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v3, "marmalade21"

    const-string v4, "*****************************************************"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v3, "marmalade22"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[***PLog9***][S8] GAME LAUNCH STARTED at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v0, "marmalade23"

    const-string v3, "*****************************************************"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    const-string v0, "launchReportingPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/mainactivity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 365
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->launchReportingTimesKey()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 366
    const-wide/16 v6, 0xa

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mainactivity/MainActivity;->shouldTrackKey:Z

    .line 367
    iget-boolean v0, p0, Lcom/android/mainactivity/MainActivity;->shouldTrackKey:Z

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->launchReportingTimesKey()Ljava/lang/String;

    move-result-object v0

    add-long/2addr v4, v10

    invoke-virtual {p0, v3, v0, v4, v5}, Lcom/android/mainactivity/MainActivity;->saveSharedPreferencesKey(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 370
    :cond_1
    const-string v0, "androidGameLaunchStart"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/mainactivity/MainActivity;->trackKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "gameStartPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/mainactivity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->gameEndKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 374
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->elapsedRuntimeKey()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 375
    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->elapsedRealtime()J

    move-result-wide v6

    .line 378
    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    cmp-long v2, v6, v4

    if-lez v2, :cond_2

    .line 379
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mainactivity/MainActivity;->possibleCrash:I

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->gameEndKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/mainactivity/MainActivity;->saveSharedPreferencesKey(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 382
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->elapsedRuntimeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v6, v7}, Lcom/android/mainactivity/MainActivity;->saveSharedPreferencesKey(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    :goto_2
    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 389
    sput-object p0, Lcom/android/mainactivity/MainActivity;->singleton:Lcom/android/mainactivity/MainActivity;

    .line 390
    invoke-direct {p0}, Lcom/android/mainactivity/MainActivity;->createListeners()V

    .line 392
    sget-boolean v0, Lcom/android/mainactivity/MainActivity;->hasShownSplash:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/mainactivity/MainActivity;->splashScreenHidden:Z

    if-nez v0, :cond_3

    .line 393
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, p0, Lcom/android/mainactivity/MainActivity;->m_UiThreadStartLogo:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    sput-boolean v1, Lcom/android/mainactivity/MainActivity;->hasShownSplash:Z

    .line 396
    :cond_3
    #invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->startGetAdvertisingID()V

    .line 398
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$Listener;

    .line 400
    :try_start_1
    invoke-interface {v0, p1}, Lcom/android/mainactivity/MainActivity$Listener;->onCreate(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 401
    :catch_0
    move-exception v0

    .line 402
    const-string v2, "marmalade24"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    move v0, v2

    .line 366
    goto/16 :goto_1

    .line 383
    :catch_1
    move-exception v0

    .line 384
    const-string v2, "marmalade25"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[***PLog10***][S8] exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v2, "marmalade26"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[***PLog11***][S8] exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 406
    :cond_5
    invoke-direct {p0}, Lcom/android/mainactivity/MainActivity;->registerOnSystemUiVisibilityChangeListener()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 435
    const-string v0, "MainActivity.onDestroy()"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->_log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$Listener;

    .line 439
    :try_start_0
    invoke-interface {v0}, Lcom/android/mainactivity/MainActivity$Listener;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    const-string v2, "marmalade27"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 444
    :cond_0
    iput-object v5, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    .line 445
    sput-object v5, Lcom/android/mainactivity/MainActivity;->singleton:Lcom/android/mainactivity/MainActivity;

    .line 446
    sput-boolean v4, Lcom/android/mainactivity/MainActivity;->hasShownSplash:Z

    .line 447
    sput-boolean v4, Lcom/android/mainactivity/MainActivity;->splashScreenHidden:Z

    .line 448
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mainactivity/MainActivity;->onDestroyCalled:Z

    .line 449
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onDestroy()V

    .line 450
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 548
    const-string v0, "MainActivity.onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->_log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onPause()V

    .line 550
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$Listener;

    .line 552
    :try_start_0
    invoke-interface {v0}, Lcom/android/mainactivity/MainActivity$Listener;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    const-string v2, "marmalade28"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 557
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 4

    .prologue
    .line 523
    const-string v0, "MainActivity.onRestart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->_log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onRestart()V

    .line 525
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$Listener;

    .line 527
    :try_start_0
    invoke-interface {v0}, Lcom/android/mainactivity/MainActivity$Listener;->onRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    const-string v2, "marmalade29"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 532
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 535
    const-string v0, "MainActivity.onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->_log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onResume()V

    .line 537
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$Listener;

    .line 539
    :try_start_0
    invoke-interface {v0}, Lcom/android/mainactivity/MainActivity$Listener;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    const-string v2, "marmalade30"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->setImmersiveFullscreenMode()V

    .line 545
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 511
    const-string v0, "MainActivity.onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->_log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onStart()V

    .line 513
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$Listener;

    .line 515
    :try_start_0
    invoke-interface {v0}, Lcom/android/mainactivity/MainActivity$Listener;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string v2, "marmalade31"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 560
    const-string v0, "MainActivity.onStop()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->_log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onStop()V

    .line 562
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mainactivity/MainActivity$Listener;

    .line 564
    :try_start_0
    invoke-interface {v0}, Lcom/android/mainactivity/MainActivity$Listener;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    const-string v2, "marmalade32"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method public pnIconId()I
    .locals 1

    .prologue
    .line 461
    const/high16 v0, 0x7f020000

    return v0
.end method

.method public printThreadInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 582
    const-string v0, "marmalade33"

    const-string v1, "tid: %d, name: %s, message: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method public quitGame()V
    .locals 2

    .prologue
    .line 502
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v1, Lcom/android/mainactivity/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mainactivity/MainActivity$4;-><init>(Lcom/android/mainactivity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method public registerListener(Lcom/android/mainactivity/MainActivity$Listener;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registering MainActivity.Listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mainactivity/MainActivity;->_log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public saveSharedPreferencesKey(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    return-void
.end method

.method public setImmersiveFullscreenMode()V
    .locals 2

    .prologue
    .line 640
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 649
    :goto_0
    return-void

    .line 643
    :cond_0
    const-string v0, "marmalade34"

    const-string v1, "setImmersiveFullscreenMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v1, Lcom/android/mainactivity/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mainactivity/MainActivity$6;-><init>(Lcom/android/mainactivity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setManualLoadingMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method public sharedPreferencesKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mainactivity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 279
    :goto_0
    return-object p1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string v1, "marmalade35"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[***PLog12***][S8] exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v1, "marmalade36"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[***PLog13***][S8] exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startGetAdvertisingID()V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mainactivity/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mainactivity/MainActivity$3;-><init>(Lcom/android/mainactivity/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 339
    return-void
.end method

.method public stopMyLogo()V
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/android/mainactivity/MainActivity;->m_UiThreadStopLogo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public trackKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method
.method private startFloatWin()V
    .locals 2

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/FloatWinService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 516
    return-void
.end method

.method public static playSound()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/mainactivity/MainActivity;->ns:Lzj/zfenlly/gua/NotifySound;

    const/4 v0, 0x2

    invoke-static {v0}, Lzj/zfenlly/gua/NotifySound;->play(I)V

    .line 44
    return-void
.end method

.method public vibrateInit()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/mainactivity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/android/mainactivity/MainActivity;->vibrator:Landroid/os/Vibrator;

    .line 51
    return-void
.end method

.method public static doVibrate()V
    .locals 3

    .prologue
    .line 44
    const/4 v1, 0x6

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 45
    .local v0, "pattern":[J
    sget-object v1, Lcom/android/mainactivity/MainActivity;->vibrator:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 46
    return-void

    .line 44
    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x64
        0xc8
        0x64
        0xc8
    .end array-data
.end method

.method public static NotifyVibrate()V
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/android/mainactivity/MainActivity;->a:I

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    sput v0, Lcom/android/mainactivity/MainActivity;->a:I

    .line 59
    invoke-static {}, Lcom/android/mainactivity/MainActivity;->doVibrate()V

    .line 61
    :cond_0
    return-void
.end method

.method public static zjtest(Ljava/lang/String;)V
    .locals 3
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "MTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "z=== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    const-string/jumbo v0, "ztag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 216
    invoke-static {p0, p1, p2, p3}, Lzj/zfenlly/gua/MPermissions;->onPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 241
    return-void
.end method