.class Lcom/ideaworks3d/marmalade/s3eCamera2$5;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "s3eCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ideaworks3d/marmalade/s3eCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;


# direct methods
.method constructor <init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$5;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 486
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 491
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .prologue
    .line 475
    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraLock:Ljava/lang/Object;
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$5;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # setter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0, p1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$302(Lcom/ideaworks3d/marmalade/s3eCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 478
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$5;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->createCameraPreviewSession()V
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$1200(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    .line 479
    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraOpenSem:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$1300()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 480
    monitor-exit v1

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
