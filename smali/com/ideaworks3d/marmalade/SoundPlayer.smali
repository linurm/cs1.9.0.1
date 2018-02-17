.class public Lcom/ideaworks3d/marmalade/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# static fields
.field private static final INITIAL_BUFFER_SIZE_MULTIPLIER:I = 0x2

.field private static final PERIODS_IN_BUFFER:I = 0x2


# instance fields
.field private m_BufSize:I

.field private m_FrameSize:I

.field private m_NeedsPrime:Z

.field private m_Period:I

.field private m_SampleData:[S

.field private m_SampleRate:I

.field private m_Stereo:Z

.field private m_Track:Landroid/media/AudioTrack;

.field private m_Volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Stereo:Z

    .line 16
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_NeedsPrime:Z

    .line 17
    iput v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleRate:I

    return-void
.end method

.method private declared-synchronized applyVolume()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Volume:I

    int-to-float v0, v0

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 161
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native generateAudio([SI)V
.end method

.method private writeSamples(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleData:[S

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleData:[S

    invoke-direct {p0, v1, p1}, Lcom/ideaworks3d/marmalade/SoundPlayer;->generateAudio([SI)V

    .line 94
    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Stereo:Z

    if-eqz v1, :cond_2

    .line 95
    mul-int/lit8 p1, p1, 0x2

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleData:[S

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 99
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleData:[S

    invoke-virtual {v1, v4, v0, p1}, Landroid/media/AudioTrack;->write([SII)I

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 101
    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 105
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method init(IZI)I
    .locals 9

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 23
    iput p3, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleRate:I

    .line 24
    iput-boolean p2, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Stereo:Z

    .line 25
    iput p1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Volume:I

    .line 26
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleRate:I

    if-nez v0, :cond_0

    .line 28
    invoke-static {v2}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v0

    iput v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleRate:I

    .line 30
    :cond_0
    const/4 v4, 0x2

    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v3, 0x4

    .line 33
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Stereo:Z

    if-eqz v0, :cond_1

    .line 34
    const/16 v3, 0xc

    .line 35
    :cond_1
    iput v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_FrameSize:I

    .line 36
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Stereo:Z

    if-eqz v0, :cond_2

    .line 37
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_FrameSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_FrameSize:I

    .line 38
    :cond_2
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleRate:I

    invoke-static {v0, v3, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 39
    iput v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_BufSize:I

    .line 40
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_BufSize:I

    iget v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_FrameSize:I

    div-int/2addr v0, v1

    .line 41
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Period:I

    .line 50
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget v2, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleRate:I

    iget v5, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_BufSize:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    .line 51
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->applyVolume()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v8, :cond_3

    move v0, v7

    .line 69
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v0

    move v0, v7

    .line 56
    goto :goto_0

    .line 63
    :cond_3
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_BufSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleData:[S

    .line 64
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0, p0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 65
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Period:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    .line 68
    iput-boolean v8, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_NeedsPrime:Z

    .line 69
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleRate:I

    goto :goto_0
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public declared-synchronized onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Period:I

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->writeSamples(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 111
    if-nez v0, :cond_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pause()V
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resume()V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->start()V

    .line 148
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Period:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->writeSamples(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setVolume(I)V
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Volume:I

    .line 154
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->applyVolume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method start()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 74
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Volume:I

    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Stereo:Z

    iget v2, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_SampleRate:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/SoundPlayer;->init(IZI)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 77
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_NeedsPrime:Z

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_NeedsPrime:Z

    .line 80
    iget v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Period:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/SoundPlayer;->writeSamples(I)Z

    .line 82
    :cond_1
    return-void
.end method

.method declared-synchronized stop()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 122
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 123
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 124
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/SoundPlayer;->m_Track:Landroid/media/AudioTrack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
