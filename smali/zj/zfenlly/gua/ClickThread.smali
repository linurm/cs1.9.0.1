.class public Lzj/zfenlly/gua/ClickThread;
.super Ljava/lang/Thread;
.source "ClickThread.java"


# instance fields
.field downTime:J

.field eventTime:J

.field interval:I

.field isStart:Z

.field private mContext:Landroid/content/Context;

.field private mCoordinateView:Lzj/zfenlly/gua/Coordinate;

.field public mHandler:Landroid/os/Handler;

.field mInst:Landroid/app/Instrumentation;

.field times:I

.field x_zb:I

.field y_zb:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mInst:Landroid/app/Instrumentation;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 38
    iput-object p1, p0, Lzj/zfenlly/gua/ClickThread;->mContext:Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lzj/zfenlly/gua/ClickThread;->interval:I

    .line 42
    new-instance v0, Lzj/zfenlly/gua/Coordinate;

    invoke-direct {v0, p2, p3}, Lzj/zfenlly/gua/Coordinate;-><init>(II)V

    iput-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lzj/zfenlly/gua/Coordinate;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "coordinateView"    # Lzj/zfenlly/gua/Coordinate;
    .param p4, "t"    # I
    .param p5, "inter"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mInst:Landroid/app/Instrumentation;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 30
    iput-object p1, p0, Lzj/zfenlly/gua/ClickThread;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    .line 32
    iput p4, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    .line 33
    iput p5, p0, Lzj/zfenlly/gua/ClickThread;->interval:I

    .line 34
    iput-object p3, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 59
    iput-boolean v12, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 60
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    :cond_0
    iget v0, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    if-eqz v0, :cond_2

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzj/zfenlly/gua/ClickThread;->downTime:J

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzj/zfenlly/gua/ClickThread;->eventTime:J

    .line 67
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    iget v0, v0, Lzj/zfenlly/gua/Coordinate;->x:I

    iput v0, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    .line 69
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    iget v0, v0, Lzj/zfenlly/gua/Coordinate;->y:I

    iput v0, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    .line 71
    :cond_1
    iget-wide v0, p0, Lzj/zfenlly/gua/ClickThread;->downTime:J

    iget-wide v2, p0, Lzj/zfenlly/gua/ClickThread;->eventTime:J

    const/4 v4, 0x0

    iget v5, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    int-to-float v5, v5

    iget v6, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 72
    .local v9, "me1":Landroid/view/MotionEvent;
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 75
    .end local v9    # "me1":Landroid/view/MotionEvent;
    :goto_0
    monitor-enter p0

    .line 77
    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    iget-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    if-nez v0, :cond_4

    .line 112
    :cond_2
    :goto_2
    iput-boolean v11, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 113
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzj/zfenlly/gua/ClickThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    :cond_3
    return-void

    .line 78
    :catch_0
    move-exception v8

    .line 80
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 85
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzj/zfenlly/gua/ClickThread;->downTime:J

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzj/zfenlly/gua/ClickThread;->eventTime:J

    .line 87
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    iget v0, v0, Lzj/zfenlly/gua/Coordinate;->x:I

    iput v0, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    .line 89
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mCoordinateView:Lzj/zfenlly/gua/Coordinate;

    iget v0, v0, Lzj/zfenlly/gua/Coordinate;->y:I

    iput v0, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    .line 91
    :cond_5
    iget-wide v0, p0, Lzj/zfenlly/gua/ClickThread;->downTime:J

    iget-wide v2, p0, Lzj/zfenlly/gua/ClickThread;->eventTime:J

    const/4 v4, 0x1

    iget v5, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    int-to-float v5, v5

    iget v6, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 92
    .local v10, "me2":Landroid/view/MotionEvent;
    iget-object v0, p0, Lzj/zfenlly/gua/ClickThread;->mInst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v10}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 93
    const-string/jumbo v0, "ZTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send pointersync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lzj/zfenlly/gua/ClickThread;->x_zb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lzj/zfenlly/gua/ClickThread;->y_zb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 102
    .end local v10    # "me2":Landroid/view/MotionEvent;
    :goto_3
    monitor-enter p0

    .line 104
    :try_start_5
    iget v0, p0, Lzj/zfenlly/gua/ClickThread;->interval:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 109
    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 110
    iget-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 94
    :catch_1
    move-exception v8

    .line 95
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 105
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 107
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 109
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 73
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method public setTempTimes(I)V
    .locals 0
    .param p1, "t"    # I

    .prologue
    .line 47
    iput p1, p0, Lzj/zfenlly/gua/ClickThread;->times:I

    .line 48
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzj/zfenlly/gua/ClickThread;->isStart:Z

    .line 52
    invoke-virtual {p0}, Lzj/zfenlly/gua/ClickThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lzj/zfenlly/gua/ClickThread;->interrupt()V

    .line 55
    :cond_0
    return-void
.end method
