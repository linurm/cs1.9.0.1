.class public Lcom/ideaworks3d/marmalade/S3EVideoView;
.super Landroid/widget/VideoView;
.source "S3EVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/ideaworks3d/marmalade/SuspendResumeListener;


# static fields
.field public static final S3E_VIDEO_FAILED:I = 0x3

.field public static final S3E_VIDEO_MAX_VOLUME:I = 0x100

.field public static final S3E_VIDEO_PAUSED:I = 0x2

.field public static final S3E_VIDEO_PLAYING:I = 0x1

.field public static final S3E_VIDEO_STOPPED:I


# instance fields
.field private m_FullScreenView:Landroid/widget/FrameLayout;

.field private m_Fullscreen:Z

.field private m_Height:I

.field private m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

.field private m_MediaPlayer:Landroid/media/MediaPlayer;

.field private m_Path:Ljava/lang/String;

.field private m_PausedBeforeSuspend:Z

.field private m_Repeats:I

.field private m_StoredPos:I

.field private m_Uri:Landroid/net/Uri;

.field private m_Volume:F

.field private m_Width:I


# direct methods
.method public constructor <init>(Lcom/ideaworks3d/marmalade/LoaderActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Volume:F

    .line 30
    iput v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_StoredPos:I

    .line 31
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_PausedBeforeSuspend:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_FullScreenView:Landroid/widget/FrameLayout;

    .line 36
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 37
    invoke-virtual {p0, p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 38
    invoke-virtual {p0, p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39
    invoke-virtual {p0, p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 40
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->addSuspendResumeListener(Lcom/ideaworks3d/marmalade/SuspendResumeListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_MediaPlayer:Landroid/media/MediaPlayer;

    .line 163
    iget v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Repeats:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Repeats:I

    .line 164
    iget v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Repeats:I

    if-gtz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->videoStop()V

    .line 167
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoStopped()V

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->stopPlayback()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_StoredPos:I

    .line 173
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Uri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoStopped()V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    .line 198
    iget v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Height:I

    if-eqz v0, :cond_0

    .line 199
    iget v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Width:I

    iget v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Height:I

    invoke-virtual {p0, v0, v1}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setMeasuredDimension(II)V

    .line 200
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_MediaPlayer:Landroid/media/MediaPlayer;

    .line 148
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_MediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Volume:F

    iget v2, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 149
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->videoResume()V

    .line 150
    return-void
.end method

.method public onSuspendResumeEvent(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SUSPEND:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_PausedBeforeSuspend:Z

    .line 89
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->videoPause()V

    .line 91
    :cond_1
    return-void

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 185
    invoke-virtual {p0, v1}, Lcom/ideaworks3d/marmalade/S3EVideoView;->getLocationOnScreen([I)V

    .line 186
    aget v0, v1, v0

    int-to-float v0, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 187
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 191
    :cond_0
    return v0
.end method

.method public videoAddView(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 100
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Fullscreen:Z

    .line 101
    iput p4, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Width:I

    .line 102
    iput p5, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Height:I

    .line 103
    if-eqz p1, :cond_0

    .line 105
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 109
    iput v3, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Width:I

    .line 110
    iput v3, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Height:I

    .line 111
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_FullScreenView:Landroid/widget/FrameLayout;

    .line 112
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_FullScreenView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_FullScreenView:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 114
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_FullScreenView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setZOrderOnTop(Z)V

    .line 125
    return-void

    .line 118
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 121
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 122
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TopLevel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public videoGetPosition()I
    .locals 1

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50
    :goto_0
    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoPause()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_StoredPos:I

    .line 71
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->pause()V

    .line 72
    return-void
.end method

.method public videoPlay(Ljava/lang/String;IJJ)I
    .locals 3

    .prologue
    .line 55
    iput p2, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Repeats:I

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Path:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 66
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ideaworks3d/marmalade/VFSProvider;->ASSET_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Uri:Landroid/net/Uri;

    .line 64
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public videoRemoveView()V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Fullscreen:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_FrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_FullScreenView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_FullScreenView:Landroid/widget/FrameLayout;

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_TopLevel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public videoResume()V
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_StoredPos:I

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->seekTo(I)V

    .line 76
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_PausedBeforeSuspend:Z

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_PausedBeforeSuspend:Z

    .line 79
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->pause()V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->start()V

    goto :goto_0
.end method

.method public videoSetVolume(I)V
    .locals 3

    .prologue
    .line 138
    int-to-float v0, p1

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Volume:F

    .line 139
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_MediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Volume:F

    iget v2, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_Volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 143
    :cond_0
    return-void
.end method

.method public videoStop()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_MediaPlayer:Landroid/media/MediaPlayer;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/ideaworks3d/marmalade/S3EVideoView;->m_StoredPos:I

    .line 96
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->stopPlayback()V

    .line 97
    return-void
.end method
