.class Lcom/ideaworks3d/marmalade/s3eCamera2$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "s3eCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ideaworks3d/marmalade/s3eCamera2;->StartCapture(Z)V
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
    .line 431
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$300(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 441
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bIsJPEG:Z
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$600(Lcom/ideaworks3d/marmalade/s3eCamera2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilderJPEG:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {v1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$700(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->setStillCaptureRequestBuilderFields(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    invoke-static {v0, v1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$800(Lcom/ideaworks3d/marmalade/s3eCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 444
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilderJPEG:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$700(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v2, v2, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # setter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, p1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$1102(Lcom/ideaworks3d/marmalade/s3eCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 455
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 448
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {v1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$900(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    # invokes: Lcom/ideaworks3d/marmalade/s3eCamera2;->setPreviewRequestBuilderFields(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    invoke-static {v0, v1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$1000(Lcom/ideaworks3d/marmalade/s3eCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 449
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2$4;->this$0:Lcom/ideaworks3d/marmalade/s3eCamera2;

    # getter for: Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->access$900(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v2, v2, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
