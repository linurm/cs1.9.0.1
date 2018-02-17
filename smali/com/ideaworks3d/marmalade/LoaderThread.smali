.class public Lcom/ideaworks3d/marmalade/LoaderThread;
.super Ljava/lang/Thread;
.source "LoaderThread.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;,
        Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;,
        Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;
    }
.end annotation


# static fields
.field static g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;


# instance fields
.field private m_Accelerometer:Landroid/hardware/Sensor;

.field private m_AppDoingInitTerm:I

.field private m_Assets:Landroid/content/res/AssetManager;

.field private m_BatteryLevel:I

.field private m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

.field private m_ChargerConnected:Z

.field private m_Compass:Landroid/hardware/Sensor;

.field private final m_CreateView:Ljava/lang/Runnable;

.field private m_DidSuspendForSurfaceChange:Z

.field private m_FileRoot:Ljava/io/File;

.field private m_FixScreenOrientation:I

.field private m_Handler:Landroid/os/Handler;

.field private m_IgnoreResizeWhilePaused:Z

.field private m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

.field private m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

.field private m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

.field private m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

.field private m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

.field private m_NetworkCheckEnabled:Z

.field private m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

.field private m_OnTouchWait:Ljava/lang/Integer;

.field private m_Orientation:Landroid/hardware/Sensor;

.field private m_ResumeInProgress:Ljava/lang/Boolean;

.field private final m_RunOnOSThread:Ljava/lang/Runnable;

.field private m_SensorManager:Landroid/hardware/SensorManager;

.field private m_SkipNextChange:Z

.field private m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

.field private m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

.field private m_StartScreenOrientation:I

.field private m_Started:Ljava/lang/Boolean;

.field private m_Stopped:Ljava/lang/Boolean;

.field private m_TelephonyManagerExists:Z

.field private m_TelephonyManagerExistsKnown:Z

.field private m_Terminating:Ljava/lang/Boolean;

.field private m_TouchMulti:Z

.field private m_UseGL:Z

.field private m_VideoIsPaused:Ljava/lang/Boolean;

.field private m_View:Lcom/ideaworks3d/marmalade/LoaderView;

.field private m_splashFinished:Z


# direct methods
.method private constructor <init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/res/AssetManager;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 545
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 461
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$1;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$1;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$2;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$2;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    .line 495
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    .line 496
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Handler:Landroid/os/Handler;

    .line 503
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    .line 504
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    .line 511
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    .line 512
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    .line 513
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_VideoIsPaused:Ljava/lang/Boolean;

    .line 514
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    .line 515
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    .line 517
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    .line 518
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TouchMulti:Z

    .line 520
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    .line 521
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$3;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$3;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_RunOnOSThread:Ljava/lang/Runnable;

    .line 528
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$4;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$4;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    .line 543
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 647
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_splashFinished:Z

    .line 546
    iput-object p2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Assets:Landroid/content/res/AssetManager;

    .line 549
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 550
    iput v4, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_StartScreenOrientation:I

    .line 551
    invoke-virtual {p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FixScreenOrientation:I

    .line 553
    iput-object p3, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FileRoot:Ljava/io/File;

    .line 554
    new-instance v0, Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    .line 555
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    .line 557
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 560
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    .line 563
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FileRoot:Ljava/io/File;

    const-string v2, "makeramdirectory.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->initNative()V

    .line 573
    return-void

    .line 568
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/ideaworks3d/marmalade/LoaderThread;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSTickNative()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ideaworks3d/marmalade/LoaderThread;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/ideaworks3d/marmalade/LoaderThread;)Lcom/ideaworks3d/marmalade/LoaderActivity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ideaworks3d/marmalade/LoaderThread;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ideaworks3d/marmalade/LoaderThread;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->audioStoppedNotify(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/ideaworks3d/marmalade/LoaderThread;)Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Assets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ideaworks3d/marmalade/LoaderThread;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/ideaworks3d/marmalade/LoaderThread;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ChargerConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/ideaworks3d/marmalade/LoaderThread;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ChargerConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ideaworks3d/marmalade/LoaderThread;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->chargerStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/ideaworks3d/marmalade/LoaderThread;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->networkCheckChanged(Z)V

    return-void
.end method

.method private native audioStoppedNotify(I)V
.end method

.method private native chargerStateChanged(Z)V
.end method

.method private doResume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 947
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 948
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->waitForView()V

    .line 949
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->glResume()V

    .line 950
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 951
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 956
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-eqz v0, :cond_2

    .line 959
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationStart(Lcom/ideaworks3d/marmalade/LoaderActivity;)Z

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 963
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 965
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 967
    :cond_3
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    if-eqz v0, :cond_4

    .line 969
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 972
    :cond_4
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->resume()V

    .line 973
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->doResume()V

    .line 974
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_VideoIsPaused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 975
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoResume()I

    .line 976
    :cond_5
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    if-eqz v0, :cond_6

    .line 977
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-virtual {v0, v5, v5}, Lcom/ideaworks3d/marmalade/SoundRecord;->start(II)I

    .line 978
    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    .line 979
    new-instance v0, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->RESUME:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;-><init>(Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;)V

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->notifySuspendResumeListeners(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V

    .line 981
    return-void
.end method

.method private doSuspend()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 906
    new-instance v0, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;

    sget-object v2, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SUSPEND:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    invoke-direct {v0, v2}, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;-><init>(Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;)V

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->notifySuspendResumeListeners(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V

    .line 907
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->doPause()V

    .line 908
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoGetStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_VideoIsPaused:Ljava/lang/Boolean;

    .line 909
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_VideoIsPaused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoPause()I

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->pause()V

    .line 912
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundRecord;->stop()I

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 917
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 919
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 921
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 923
    :cond_3
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    if-eqz v0, :cond_4

    .line 926
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 928
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-eqz v0, :cond_5

    .line 932
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationStop()Z

    .line 933
    :cond_5
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    .line 934
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 935
    :cond_6
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    if-eqz v0, :cond_7

    .line 937
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 938
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 940
    :cond_7
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 941
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->glPause()V

    .line 942
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 943
    return-void

    :cond_8
    move v0, v1

    .line 908
    goto/16 :goto_0
.end method

.method private extendSplashOrientation(I)I
    .locals 0

    .prologue
    .line 655
    sparse-switch p1, :sswitch_data_0

    .line 664
    :goto_0
    return p1

    .line 659
    :sswitch_0
    const/4 p1, 0x6

    goto :goto_0

    .line 662
    :sswitch_1
    const/4 p1, 0x7

    goto :goto_0

    .line 655
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private fixOrientation(I)V
    .locals 2

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->translateS3eOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FixScreenOrientation:I

    .line 635
    const-string v0, "AndroidIgnoreResizeWhilePaused"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_IgnoreResizeWhilePaused:Z

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->doFixOrientation()V

    .line 640
    return-void
.end method

.method private getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/res/AssetManager;Ljava/io/File;Lcom/ideaworks3d/marmalade/LoaderView;)Lcom/ideaworks3d/marmalade/LoaderThread;
    .locals 2

    .prologue
    .line 593
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/ideaworks3d/marmalade/LoaderThread;-><init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Landroid/content/res/AssetManager;Ljava/io/File;)V

    sput-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    .line 597
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0, p3}, Lcom/ideaworks3d/marmalade/LoaderThread;->setView(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 598
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->start()V

    .line 610
    :goto_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    return-object v0

    .line 603
    :cond_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    iget-object v1, v0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    monitor-enter v1

    .line 606
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    iput-object p0, v0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 607
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-virtual {v0, p3}, Lcom/ideaworks3d/marmalade/LoaderThread;->setView(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 608
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPrivateExternalDir()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1090
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-object v0

    .line 1092
    :cond_1
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1093
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRstDir()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1097
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-object v0

    .line 1099
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1100
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTelephonyId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->telephonyManagerExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1231
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1221
    :cond_1
    :try_start_0
    new-instance v0, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;-><init>(Landroid/app/Activity;)V

    .line 1222
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1223
    if-eqz v0, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getTmpDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private glInit(I)V
    .locals 3

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    if-eqz v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1009
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    .line 1010
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 1011
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    monitor-enter v1

    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->waitForView()V

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/LoaderView;->glInit(I)Z

    .line 1027
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1020
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private glReInit()V
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    if-nez v0, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 1075
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->glReInit()V

    .line 1076
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    goto :goto_0
.end method

.method private glTerm()V
    .locals 3

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    if-nez v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    .line 1039
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->glTerm()V

    .line 1040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_UseGL:Z

    .line 1042
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    monitor-enter v1

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_CreateView:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1059
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->waitForView()V

    .line 1063
    :cond_2
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    goto :goto_0

    .line 1054
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1051
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private native initNative()V
.end method

.method private native lowMemoryWarning()V
.end method

.method private native networkCheckChanged(Z)V
.end method

.method private native onAccelNative(FFF)V
.end method

.method private native onCompassNative(IFFF)V
.end method

.method private native resumeAppThreads()V
.end method

.method private native runNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native runOnOSThreadNative(Ljava/lang/Runnable;)V
.end method

.method private native runOnOSTickNative()V
.end method

.method private native setViewNative(Lcom/ideaworks3d/marmalade/LoaderView;)V
.end method

.method private native shutdownNative()V
.end method

.method private shuttingDown(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1121
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    .line 1127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    .line 1128
    const/4 v0, 0x0

    sput-object v0, Lcom/ideaworks3d/marmalade/LoaderThread;->g_Singleton:Lcom/ideaworks3d/marmalade/LoaderThread;

    .line 1130
    if-eqz p1, :cond_2

    .line 1131
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->shutdownNative()V

    .line 1132
    :cond_2
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->smsStop()V

    .line 1133
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->accelStop()V

    .line 1134
    new-instance v0, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SHUTDOWN:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;-><init>(Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;)V

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->notifySuspendResumeListeners(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V

    .line 1135
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1140
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1142
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1144
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevelReceiverRegistered:Ljava/lang/Boolean;

    .line 1146
    :cond_4
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->networkCheckStop()Z

    .line 1148
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->finish()V

    goto :goto_0
.end method

.method private native signalResume(Z)Z
.end method

.method private native signalSuspend(Z)Z
.end method

.method private native suspendAppThreads()V
.end method

.method private touchSetWait(I)V
    .locals 1

    .prologue
    .line 685
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    .line 686
    return-void
.end method

.method private translateS3eOrientation(I)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 614
    packed-switch p1, :pswitch_data_0

    .line 628
    :goto_0
    :pswitch_0
    return v0

    .line 619
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 621
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 623
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 625
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private translateSplashOrientation(I)I
    .locals 1

    .prologue
    .line 668
    sparse-switch p1, :sswitch_data_0

    .line 674
    :cond_0
    :goto_0
    return p1

    .line 672
    :sswitch_0
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_splashFinished:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_StartScreenOrientation:I

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->extendSplashOrientation(I)I

    move-result p1

    goto :goto_0

    .line 668
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private waitForView()V
    .locals 2

    .prologue
    .line 986
    :goto_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    monitor-enter v1

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->waitForSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    monitor-exit v1

    goto :goto_0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 996
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->setViewNative(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 997
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    return-void
.end method


# virtual methods
.method public accelStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 751
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    .line 754
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 756
    :cond_0
    return-void
.end method

.method public accelStop()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Accelerometer:Landroid/hardware/Sensor;

    .line 764
    :cond_0
    return-void
.end method

.method public acquireMulticastLock()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1388
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    if-nez v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1395
    :try_start_0
    new-instance v2, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    invoke-direct {v2, p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread;Landroid/net/wifi/WifiManager;)V

    iput-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    if-eqz v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->acquire()V

    .line 1406
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->isHeld()Z

    move-result v0

    .line 1408
    :goto_0
    return v0

    .line 1397
    :catch_0
    move-exception v0

    move v0, v1

    .line 1400
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1408
    goto :goto_0
.end method

.method public audioStopAll()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MediaPlayerManager:Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioStopAll()V

    .line 453
    return-void
.end method

.method public chargerIsConnected()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ChargerConnected:Z

    return v0
.end method

.method public clipboardGet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 849
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clipboardSet(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 859
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 861
    :cond_0
    return-void
.end method

.method public compassStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 787
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    .line 790
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    .line 791
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 792
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 794
    :cond_0
    return-void
.end method

.method public compassStop()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 800
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Orientation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Compass:Landroid/hardware/Sensor;

    .line 803
    :cond_0
    return-void
.end method

.method public doFixOrientation()V
    .locals 2

    .prologue
    .line 678
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FixScreenOrientation:I

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->translateSplashOrientation(I)I

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->setRequestedOrientation(I)V

    .line 681
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_BatteryLevel:I

    return v0
.end method

.method public getDeviceDpi(Z)I
    .locals 4

    .prologue
    .line 890
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 891
    if-eqz p1, :cond_0

    .line 892
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 897
    :goto_0
    return v0

    .line 893
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    .line 894
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, v3

    .line 895
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 896
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v2, v3

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 897
    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getDeviceIMSI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->telephonyManagerExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1276
    :cond_0
    :try_start_0
    new-instance v0, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;-><init>(Landroid/app/Activity;)V

    .line 1277
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1235
    const-string v1, "AndroidTryAndroidIdFirst"

    invoke-static {v1, v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 1237
    :goto_0
    if-nez v1, :cond_2

    .line 1239
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->getTelephonyId()Ljava/lang/String;

    move-result-object v0

    .line 1240
    if-eqz v0, :cond_2

    const-string v2, ""

    if-eq v0, v2, :cond_2

    .line 1264
    :cond_0
    :goto_1
    return-object v0

    .line 1235
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 1243
    :cond_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    if-eqz v0, :cond_3

    const-string v2, "9774d56d682e549c"

    if-ne v0, v2, :cond_0

    .line 1250
    :cond_3
    :try_start_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    if-nez v0, :cond_0

    .line 1258
    :goto_2
    if-eqz v1, :cond_4

    .line 1260
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->getTelephonyId()Ljava/lang/String;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_4

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 1264
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1254
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1192
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->telephonyManagerExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1296
    :cond_0
    :try_start_0
    new-instance v0, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;-><init>(Landroid/app/Activity;)V

    .line 1297
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/TelephonyManagerProxy;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNetworkSubType()I
    .locals 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1380
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1381
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 1384
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1371
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1372
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1375
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 643
    .line 644
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 645
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getSilentMode()Z
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1309
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1310
    const/4 v0, 0x0

    .line 1311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStarted()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasMultitouch()Z
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1115
    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1117
    return v0
.end method

.method public launchBrowser(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1317
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1318
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1319
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1320
    const-string v0, "vfstore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    :cond_0
    const/high16 v0, 0x14200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1325
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    const/4 v0, 0x1

    .line 1329
    :goto_0
    return v0

    .line 1327
    :catch_0
    move-exception v0

    .line 1329
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locationGpsData()Z
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationGpsData()Z

    move-result v0

    .line 1188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locationStart()Z
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-eqz v0, :cond_0

    .line 1171
    const/4 v0, 0x0

    .line 1173
    :goto_0
    return v0

    .line 1172
    :cond_0
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderLocation;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/LoaderLocation;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    .line 1173
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationStart(Lcom/ideaworks3d/marmalade/LoaderActivity;)Z

    move-result v0

    goto :goto_0
.end method

.method public locationStop()Z
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    if-nez v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    .line 1181
    :goto_0
    return v0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderLocation;->locationStop()Z

    move-result v0

    .line 1180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Location:Lcom/ideaworks3d/marmalade/LoaderLocation;

    goto :goto_0
.end method

.method public networkCheckStart()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 864
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    if-eqz v0, :cond_0

    .line 870
    :goto_0
    return v4

    .line 866
    :cond_0
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    .line 868
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public networkCheckStop()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 874
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    if-nez v0, :cond_1

    .line 882
    :cond_0
    :goto_0
    return v2

    .line 876
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckEnabled:Z

    .line 878
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_NetworkCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 736
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->shuttingDown(Z)V

    .line 1154
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->interrupt()V

    .line 1157
    :try_start_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1166
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->lowMemoryWarning()V

    .line 1167
    return-void
.end method

.method public native onMotionEvent(IIII)V
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 690
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    .line 691
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    .line 692
    invoke-direct {p0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->signalResume(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    .line 697
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 739
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 740
    if-ne v0, v3, :cond_1

    .line 741
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->onAccelNative(FFF)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    if-ne v0, v5, :cond_2

    .line 743
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->onCompassNative(IFFF)V

    goto :goto_0

    .line 744
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 745
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->onCompassNative(IFFF)V

    goto :goto_0
.end method

.method public onSplashFinished()V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_splashFinished:Z

    .line 651
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->doFixOrientation()V

    .line 652
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 715
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Terminating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    .line 731
    invoke-direct {p0, v1}, Lcom/ideaworks3d/marmalade/LoaderThread;->signalSuspend(Z)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 1354
    invoke-static {p0, p1}, Lcom/ideaworks3d/marmalade/MultiTouch;->onTouchEvent(Lcom/ideaworks3d/marmalade/LoaderThread;Landroid/view/MotionEvent;)Z

    .line 1355
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 1357
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    monitor-enter v1

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_OnTouchWait:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 1366
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1361
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public recordAvailable()I
    .locals 1

    .prologue
    .line 823
    invoke-static {}, Lcom/ideaworks3d/marmalade/SoundRecord;->available()I

    move-result v0

    return v0
.end method

.method public recordStart(II)I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/SoundRecord;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    .line 831
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-virtual {v0, p1, p2}, Lcom/ideaworks3d/marmalade/SoundRecord;->start(II)I

    move-result v0

    .line 833
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordStop()I
    .locals 2

    .prologue
    .line 838
    const/4 v0, 0x1

    .line 839
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    if-eqz v1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundRecord;->stop()I

    move-result v0

    .line 842
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundRecord:Lcom/ideaworks3d/marmalade/SoundRecord;

    .line 844
    :cond_0
    return v0
.end method

.method public releaseMulticastLock()Z
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;->release()V

    .line 1415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_MulticastLock:Lcom/ideaworks3d/marmalade/LoaderThread$MulticastLockFacade;

    .line 1416
    const/4 v0, 0x1

    .line 1418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumeAfterSurfaceChange()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_DidSuspendForSurfaceChange:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_DidSuspendForSurfaceChange:Z

    .line 92
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->resumeAppThreads()V

    .line 98
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->waitForView()V

    .line 1082
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Started:Ljava/lang/Boolean;

    .line 1083
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1084
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FileRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->runNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->shuttingDown(Z)V

    .line 1087
    return-void
.end method

.method public runOnOSSignal()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_RunOnOSThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    return-void
.end method

.method public runOnOSThread(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThreadNative(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method public runRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 701
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 703
    return-void
.end method

.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1337
    :try_start_0
    const-string v0, ",\\s*?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1338
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1339
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    const-string v2, "text/xml"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    const/high16 v0, 0x14200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1345
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    const/4 v0, 0x1

    .line 1349
    :goto_0
    return v0

    .line 1347
    :catch_0
    move-exception v0

    .line 1349
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setView(Lcom/ideaworks3d/marmalade/LoaderView;)V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    if-eqz v0, :cond_1

    .line 578
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 584
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_1
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 587
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_StartScreenOrientation:I

    .line 588
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->doFixOrientation()V

    .line 589
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->setViewNative(Lcom/ideaworks3d/marmalade/LoaderView;)V

    .line 590
    return-void

    .line 584
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public skipSurfaceChange()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 103
    iget-boolean v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_IgnoreResizeWhilePaused:Z

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_FixScreenOrientation:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 107
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SkipNextChange:Z

    .line 116
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Stopped:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SkipNextChange:Z

    if-eqz v2, :cond_1

    .line 112
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SkipNextChange:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public smsStart()Z
    .locals 4

    .prologue
    .line 767
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    .line 771
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 773
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smsStop()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_Loader:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_LoaderSMSReceiver:Lcom/ideaworks3d/marmalade/LoaderSMSReceiver;

    .line 784
    :cond_0
    return-void
.end method

.method public soundInit(IZI)I
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/SoundPlayer;->init(IZI)I

    move-result v0

    return v0
.end method

.method public soundSetVolume(I)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/SoundPlayer;->setVolume(I)V

    .line 458
    return-void
.end method

.method public soundStart()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->start()V

    .line 814
    return-void
.end method

.method public soundStop()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_SoundPlayer:Lcom/ideaworks3d/marmalade/SoundPlayer;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->stop()V

    .line 820
    return-void
.end method

.method public suspendForSurfaceChange()V
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_AppDoingInitTerm:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_ResumeInProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderThread;->suspendAppThreads()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_DidSuspendForSurfaceChange:Z

    .line 85
    :cond_0
    return-void
.end method

.method public telephonyManagerExists()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1196
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TelephonyManagerExistsKnown:Z

    if-eqz v0, :cond_0

    .line 1197
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TelephonyManagerExists:Z

    .line 1209
    :goto_0
    return v0

    .line 1201
    :cond_0
    :try_start_0
    const-string v0, "com.ideaworks3d.marmalade.TelephonyManagerProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1207
    :goto_1
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TelephonyManagerExistsKnown:Z

    .line 1208
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread;->m_TelephonyManagerExists:Z

    goto :goto_0

    .line 1203
    :catch_0
    move-exception v0

    .line 1205
    const/4 v0, 0x0

    goto :goto_1
.end method
