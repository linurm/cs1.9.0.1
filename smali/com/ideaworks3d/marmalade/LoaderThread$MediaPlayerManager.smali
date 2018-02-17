.class Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;
.super Ljava/lang/Object;
.source "LoaderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/LoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;
    }
.end annotation


# instance fields
.field private m_AudioIsPaused:[Ljava/lang/Boolean;

.field private m_AudioPlayRepeats:[I

.field private m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

.field private m_AudioVolume:[I

.field private m_MediaPlayer:[Landroid/media/MediaPlayer;

.field private m_MediaPlayerListener:[Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;

.field private final m_NumAudioChannels:I

.field final synthetic this$0:Lcom/ideaworks3d/marmalade/LoaderThread;


# direct methods
.method public constructor <init>(Lcom/ideaworks3d/marmalade/LoaderThread;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x10

    .line 141
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->this$0:Lcom/ideaworks3d/marmalade/LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v4, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_NumAudioChannels:I

    .line 142
    new-array v0, v4, [Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    .line 143
    new-array v0, v4, [Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayerListener:[Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;

    .line 144
    new-array v0, v4, [Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    .line 145
    new-array v0, v4, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioIsPaused:[Ljava/lang/Boolean;

    .line 146
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioPlayRepeats:[I

    .line 147
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioVolume:[I

    move v0, v1

    .line 148
    :goto_0
    if-ge v0, v4, :cond_0

    .line 150
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 151
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayerListener:[Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;

    new-instance v3, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;

    invoke-direct {v3, p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;-><init>(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;I)V

    aput-object v3, v2, v0

    .line 152
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->None:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aput-object v3, v2, v0

    .line 153
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioIsPaused:[Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 154
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioPlayRepeats:[I

    aput v1, v2, v0

    .line 155
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioVolume:[I

    const/16 v3, 0x64

    aput v3, v2, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;)[Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioStopped(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;)[I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioPlayRepeats:[I

    return-object v0
.end method

.method private audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aput-object p1, v0, p2

    .line 448
    return-void
.end method

.method private audioSetVolumeInternal(I)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Error:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-ne v0, v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioVolume:[I

    aget v0, v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 443
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method private audioStopped(I)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->this$0:Lcom/ideaworks3d/marmalade/LoaderThread;

    # invokes: Lcom/ideaworks3d/marmalade/LoaderThread;->audioStoppedNotify(I)V
    invoke-static {v0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->access$400(Lcom/ideaworks3d/marmalade/LoaderThread;I)V

    .line 209
    return-void
.end method


# virtual methods
.method public audioGetDuration(I)I
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Error:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Idle:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Initialized:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-ne v0, v1, :cond_1

    .line 421
    :cond_0
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public audioGetNumChannels()I
    .locals 1

    .prologue
    .line 203
    const/16 v0, 0x10

    return v0
.end method

.method public audioGetPosition(I)I
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Started:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Paused:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-eq v0, v1, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public audioGetStatus(I)I
    .locals 2

    .prologue
    .line 395
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread$5;->$SwitchMap$com$ideaworks3d$marmalade$LoaderThread$AudioState:[I

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 404
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 398
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 402
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public audioIsPlaying(I)Z
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, p1

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Started:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public audioPause(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 312
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v1, v1, p1

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Started:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-eq v1, v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 323
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Paused:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    invoke-direct {p0, v1, p1}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public audioPlay(Ljava/lang/String;IJJI)I
    .locals 11

    .prologue
    .line 213
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioStop(I)V

    .line 214
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p7

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v3, v2, p7

    .line 217
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p7

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayerListener:[Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;

    aget-object v3, v3, p7

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 218
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p7

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayerListener:[Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager$MediaPlayerListener;

    aget-object v3, v3, p7

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 222
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p7

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 223
    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Idle:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    move/from16 v0, p7

    invoke-direct {p0, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 224
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_1

    .line 227
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 229
    new-instance v2, Landroid/content/res/AssetFileDescriptor;

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 230
    iget-object v4, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v4, v4, p7

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 231
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 232
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 257
    :goto_0
    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Initialized:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    move/from16 v0, p7

    invoke-direct {p0, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 258
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p7

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 259
    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Prepared:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    move/from16 v0, p7

    invoke-direct {p0, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 275
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioSetVolumeInternal(I)V

    .line 276
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioPlayRepeats:[I

    aput p2, v2, p7

    .line 277
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v3, v2, p7

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioPlayRepeats:[I

    aget v2, v2, p7

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 281
    :try_start_1
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p7

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 290
    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Started:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    move/from16 v0, p7

    invoke-direct {p0, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 291
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 236
    :cond_1
    :try_start_2
    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 239
    :cond_2
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p7

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    .line 264
    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Error:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    move/from16 v0, p7

    invoke-direct {p0, v3, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 265
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 266
    const/4 v2, -0x1

    goto :goto_2

    .line 245
    :cond_3
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v3, v3, p7

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 247
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 249
    :catch_1
    move-exception v2

    .line 251
    :try_start_4
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->this$0:Lcom/ideaworks3d/marmalade/LoaderThread;

    # getter for: Lcom/ideaworks3d/marmalade/LoaderThread;->m_Assets:Landroid/content/res/AssetManager;
    invoke-static {v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->access$500(Lcom/ideaworks3d/marmalade/LoaderThread;)Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 252
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p7

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 253
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 268
    :catch_2
    move-exception v2

    .line 271
    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Error:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    move/from16 v0, p7

    invoke-direct {p0, v3, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 272
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    const/4 v2, -0x2

    goto :goto_2

    .line 277
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 283
    :catch_3
    move-exception v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 287
    const/4 v2, -0x2

    goto :goto_2
.end method

.method public audioResume(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 334
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v1, v1, p1

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Paused:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-eq v1, v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 348
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Started:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    invoke-direct {p0, v1, p1}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public audioSetPosition(II)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 432
    return-void
.end method

.method public audioSetVolume(II)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioVolume:[I

    aput p1, v0, p2

    .line 436
    invoke-direct {p0, p2}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioSetVolumeInternal(I)V

    .line 437
    return-void
.end method

.method public audioStop(I)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, p1

    .line 369
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Started:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Paused:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->PlaybackCompleted:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-ne v0, v1, :cond_1

    .line 378
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 379
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Stopped:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    invoke-direct {p0, v0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_MediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 385
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Idle:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    invoke-direct {p0, v0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioChangeState(Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;I)V

    .line 386
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioStopped(I)V

    .line 388
    :cond_1
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public audioStopAll()V
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 361
    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioStop(I)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method public doPause()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 295
    move v2, v1

    :goto_0
    const/16 v0, 0x10

    if-ge v2, v0, :cond_2

    .line 297
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioIsPaused:[Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioState:[Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    aget-object v0, v0, v2

    sget-object v4, Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;->Paused:Lcom/ideaworks3d/marmalade/LoaderThread$AudioState;

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    .line 298
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioIsPaused:[Ljava/lang/Boolean;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioPause(I)I

    .line 295
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 297
    goto :goto_1

    .line 301
    :cond_2
    return-void
.end method

.method public doResume()V
    .locals 2

    .prologue
    .line 304
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->m_AudioIsPaused:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderThread$MediaPlayerManager;->audioResume(I)I

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    return-void
.end method
