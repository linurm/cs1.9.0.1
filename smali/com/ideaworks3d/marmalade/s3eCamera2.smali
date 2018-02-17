.class Lcom/ideaworks3d/marmalade/s3eCamera2;
.super Ljava/lang/Object;
.source "s3eCamera2.java"

# interfaces
.implements Lcom/ideaworks3d/marmalade/SuspendResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/s3eCamera2$CloseToIdeal;,
        Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;
    }
.end annotation


# static fields
.field static final DefaultAutoFocusMode:I = 0x4

.field static final S3E_CAMERA_AUTO_FOCUS:I = 0x3

.field static final S3E_CAMERA_AVAILABLE:I = 0x0

.field static final S3E_CAMERA_BRIGHTNESS:I = 0x4

.field static final S3E_CAMERA_CONTRAST:I = 0x5

.field static final S3E_CAMERA_ERR_IO:I = 0xa

.field static final S3E_CAMERA_ERR_MEM:I = 0x8

.field static final S3E_CAMERA_ERR_NONE:I = 0x0

.field static final S3E_CAMERA_ERR_OPEN_FILE:I = 0x9

.field static final S3E_CAMERA_ERR_OPERATION_NA:I = 0xc

.field static final S3E_CAMERA_ERR_UNKNOWN:I = 0xb

.field static final S3E_CAMERA_FLASH_MODE:I = 0x8

.field static final S3E_CAMERA_FLASH_MODE_AUTO:I = 0x2

.field static final S3E_CAMERA_FLASH_MODE_OFF:I = 0x0

.field static final S3E_CAMERA_FLASH_MODE_ON:I = 0x1

.field static final S3E_CAMERA_FLASH_MODE_RED_EYE_REDUCTION:I = 0x3

.field static final S3E_CAMERA_IDLE:I = 0x0

.field static final S3E_CAMERA_PIXEL_TYPE_NV21:I = 0x1001

.field static final S3E_CAMERA_PIXEL_TYPE_YV12:I = 0x1002

.field static final S3E_CAMERA_QUALITY:I = 0x6

.field static final S3E_CAMERA_STATUS:I = 0x1

.field static final S3E_CAMERA_STREAMING:I = 0x1

.field static final S3E_CAMERA_STREAMING_SIZE_HINT_LARGEST:I = 0x2

.field static final S3E_CAMERA_STREAMING_SIZE_HINT_MAXIMUM:I = 0x3

.field static final S3E_CAMERA_STREAMING_SIZE_HINT_MEDIUM:I = 0x1

.field static final S3E_CAMERA_STREAMING_SIZE_HINT_SMALLEST:I = 0x0

.field static final S3E_CAMERA_TAKE_PICTURE_TYPE_BUFFER:I = 0x2

.field static final S3E_CAMERA_TAKE_PICTURE_TYPE_FILE:I = 0x1

.field static final S3E_CAMERA_TORCH_MODE:I = 0x9

.field static final S3E_CAMERA_TORCH_MODE_AUTO:I = 0x2

.field static final S3E_CAMERA_TORCH_MODE_OFF:I = 0x0

.field static final S3E_CAMERA_TORCH_MODE_ON:I = 0x1

.field static final S3E_CAMERA_TYPE:I = 0x7

.field static final S3E_CAMERA_TYPE_FRONT:I = 0x1

.field static final S3E_CAMERA_TYPE_REAR:I = 0x0

.field static final S3E_RESULT_ERROR:I = 0x1

.field static final S3E_RESULT_SUCCESS:I

.field private static final m_CameraLock:Ljava/lang/Object;

.field private static final m_CameraOpenSem:Ljava/util/concurrent/Semaphore;

.field private static final m_TakePictureSem:Ljava/util/concurrent/Semaphore;


# instance fields
.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mOnImageAvailableListenerJPEG:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field m_AutoFocus:I

.field private m_Camera:Landroid/hardware/camera2/CameraDevice;

.field private m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

.field private m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

.field m_Facing:I

.field m_FlashMode:I

.field m_Height:I

.field private m_ImageReader:Landroid/media/ImageReader;

.field private m_ImageReaderJPEG:Landroid/media/ImageReader;

.field m_PixelFormat:I

.field private m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private m_PreviewRequestBuilderJPEG:Landroid/hardware/camera2/CaptureRequest$Builder;

.field m_Quality:I

.field private m_Running:Z

.field m_SizeHint:I

.field m_TorchMode:I

.field m_Width:I

.field private m_bIsJPEG:Z

.field private m_bToFile:Z

.field private m_nSaveFilePathType:I

.field private m_strFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraOpenSem:Ljava/util/concurrent/Semaphore;

    .line 111
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TakePictureSem:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_SizeHint:I

    .line 76
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Width:I

    .line 77
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Height:I

    .line 78
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PixelFormat:I

    .line 79
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Facing:I

    .line 80
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Quality:I

    .line 81
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_AutoFocus:I

    .line 82
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_FlashMode:I

    .line 83
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TorchMode:I

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    .line 97
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    .line 99
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Running:Z

    .line 105
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_strFile:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bToFile:Z

    .line 107
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_nSaveFilePathType:I

    .line 108
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bIsJPEG:Z

    .line 209
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eCamera2$1;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/s3eCamera2$1;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->mOnImageAvailableListenerJPEG:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 224
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eCamera2$2;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/s3eCamera2$2;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 470
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eCamera2$5;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/s3eCamera2$5;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 117
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->addSuspendResumeListener(Lcom/ideaworks3d/marmalade/SuspendResumeListener;)V

    .line 118
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->ResetCameraIds()V

    .line 119
    return-void
.end method

.method private CameraRestart()Z
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->isCameraOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->CloseCamera()V

    .line 180
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->OpenCamera()Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ChooseOptimalSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    .prologue
    .line 310
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Height:I

    if-lez v0, :cond_0

    .line 312
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Width:I

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 313
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t apply desired size."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_SizeHint:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 320
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera2$3;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera2$3;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 333
    :cond_1
    :goto_0
    return-object v0

    .line 330
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera2$CloseToIdeal;

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->GetIdealSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ideaworks3d/marmalade/s3eCamera2$CloseToIdeal;-><init>(Landroid/util/Size;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    goto :goto_0
.end method

.method private CloseCamera()V
    .locals 4

    .prologue
    .line 545
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    .line 549
    monitor-exit v1

    .line 584
    :goto_0
    return-void

    .line 551
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 555
    const-wide/16 v2, 0x1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 557
    :catch_0
    move-exception v0

    goto :goto_1

    .line 563
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 571
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    .line 573
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReader:Landroid/media/ImageReader;

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReaderJPEG:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReaderJPEG:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReaderJPEG:Landroid/media/ImageReader;

    .line 583
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 565
    :catch_1
    move-exception v0

    .line 567
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private static final CopyLines([BIIILandroid/media/Image$Plane;I)I
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    .line 191
    invoke-virtual {p4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 192
    if-ne v1, p2, :cond_0

    .line 194
    mul-int v0, v1, p3

    sub-int/2addr v0, p5

    invoke-virtual {v2, p0, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 195
    mul-int v0, p2, p3

    add-int/2addr v0, p1

    .line 207
    :goto_0
    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v3, p3, -0x1

    if-ge v0, v3, :cond_1

    .line 201
    invoke-virtual {v2, p0, p1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 202
    add-int/2addr p1, p2

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_1
    sub-int v0, p2, p5

    invoke-virtual {v2, p0, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 205
    add-int v0, p1, p2

    goto :goto_0
.end method

.method private GetCameraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_CameraId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GetIdealSize()Landroid/util/Size;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 289
    .line 290
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_SizeHint:I

    if-ne v1, v0, :cond_1

    .line 292
    const/4 v0, 0x2

    .line 298
    :cond_0
    :goto_0
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 299
    new-instance v1, Landroid/util/Size;

    iget v3, v2, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    div-int/2addr v3, v0

    iget v2, v2, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    div-int v0, v2, v0

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 300
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 302
    new-instance v0, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 305
    :goto_1
    return-object v0

    .line 294
    :cond_1
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_SizeHint:I

    if-nez v1, :cond_0

    .line 296
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private OpenCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 495
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->isCameraOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->GetCameraId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 501
    goto :goto_0

    .line 505
    :cond_1
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 506
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->GetCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    sget-object v4, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v4, v4, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v4, v4, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 507
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraOpenSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 525
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->isCameraOpen()Z

    move-result v0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    move v0, v1

    .line 513
    goto :goto_0

    .line 515
    :catch_1
    move-exception v0

    move v0, v1

    .line 518
    goto :goto_0

    .line 520
    :catch_2
    move-exception v0

    move v0, v1

    .line 523
    goto :goto_0
.end method

.method private ResetCameraIds()V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 124
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 125
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v9, v7, v6

    .line 127
    invoke-virtual {v0, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    .line 129
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v11, v1

    move v3, v5

    move v2, v5

    :goto_1
    if-ge v3, v11, :cond_7

    aget v2, v1, v3

    .line 131
    const/4 v12, 0x4

    if-ne v2, v12, :cond_2

    move v2, v4

    .line 132
    :goto_2
    if-eqz v2, :cond_3

    move v3, v2

    .line 137
    :goto_3
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 138
    const/4 v2, 0x0

    .line 139
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    const/4 v2, 0x1

    new-instance v12, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    invoke-direct {v12, p0}, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    aput-object v12, v1, v2

    .line 142
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 144
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 146
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    const/4 v2, 0x0

    new-instance v10, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    invoke-direct {v10, p0}, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    aput-object v10, v1, v2

    .line 147
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 149
    :goto_4
    if-eqz v1, :cond_1

    .line 151
    iput-object v9, v1, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_CameraId:Ljava/lang/String;

    .line 152
    iput-boolean v3, v1, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_AutoFocusAvailable:Z

    .line 153
    iput-boolean v11, v1, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_FlashAvailable:Z

    .line 125
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 131
    goto :goto_2

    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Facing:I

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Facing:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_5
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_5

    :cond_6
    move-object v1, v2

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_3
.end method

.method private ResetPreviewSize()V
    .locals 5

    .prologue
    .line 350
    :try_start_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->getCameraSizes()[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->ChooseOptimalSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReader:Landroid/media/ImageReader;

    .line 352
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v3, v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v3, v3, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 353
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v2, 0x100

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReaderJPEG:Landroid/media/ImageReader;

    .line 354
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReaderJPEG:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->mOnImageAvailableListenerJPEG:Landroid/media/ImageReader$OnImageAvailableListener;

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v2, v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v2, v2, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private StartCapture(Z)V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 426
    :cond_0
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bIsJPEG:Z

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/Surface;

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bIsJPEG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReaderJPEG:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/ideaworks3d/marmalade/s3eCamera2$4;

    invoke-direct {v2, p0}, Lcom/ideaworks3d/marmalade/s3eCamera2$4;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v3, v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    iget-object v3, v3, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 469
    :goto_1
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/ideaworks3d/marmalade/s3eCamera2;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->StartCapture(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TakePictureSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ideaworks3d/marmalade/s3eCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->setPreviewRequestBuilderFields(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/ideaworks3d/marmalade/s3eCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/ideaworks3d/marmalade/s3eCamera2;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraOpenSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ideaworks3d/marmalade/s3eCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$400([BIIILandroid/media/Image$Plane;I)I
    .locals 1

    .prologue
    .line 36
    invoke-static/range {p0 .. p5}, Lcom/ideaworks3d/marmalade/s3eCamera2;->CopyLines([BIIILandroid/media/Image$Plane;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/ideaworks3d/marmalade/s3eCamera2;[BIIII)V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/ideaworks3d/marmalade/s3eCamera2;->previewCallback([BIIII)V

    return-void
.end method

.method static synthetic access$600(Lcom/ideaworks3d/marmalade/s3eCamera2;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bIsJPEG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilderJPEG:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ideaworks3d/marmalade/s3eCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ideaworks3d/marmalade/s3eCamera2;->setStillCaptureRequestBuilderFields(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/ideaworks3d/marmalade/s3eCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method private createCameraPreviewSession()V
    .locals 2

    .prologue
    .line 365
    :try_start_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->ResetPreviewSize()V

    .line 366
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilderJPEG:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 367
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilderJPEG:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReaderJPEG:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 368
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 369
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_ImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->StartCapture(Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCameraSizes()[Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->GetCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 340
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->GetCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 341
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 342
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Size;

    goto :goto_0
.end method

.method private isCameraOpen()Z
    .locals 2

    .prologue
    .line 170
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Camera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native onTakeImageCallback([BII)V
.end method

.method private native previewCallback([BIIII)V
.end method

.method private setPreviewRequestBuilderFields(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 379
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_AutoFocus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 380
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 381
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TorchMode:I

    packed-switch v0, :pswitch_data_0

    .line 394
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 379
    goto :goto_0

    .line 384
    :pswitch_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 385
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 388
    :pswitch_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 389
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setStillCaptureRequestBuilderFields(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 397
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_AutoFocus:I

    if-eqz v0, :cond_0

    move v0, v1

    .line 398
    :goto_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 399
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_FlashMode:I

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 397
    goto :goto_0

    .line 402
    :pswitch_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 403
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 406
    :pswitch_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 407
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 410
    :pswitch_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 413
    :pswitch_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method SaveToFile([B)V
    .locals 3

    .prologue
    .line 712
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 713
    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bToFile:Z

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_strFile:Ljava/lang/String;

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_nSaveFilePathType:I

    invoke-static {v1, p1, v2, v0}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->SaveToFile(Ljava/lang/String;[BILjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v1

    .line 716
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->onTakeImageCallback([BII)V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->onTakeImageCallback([BII)V

    goto :goto_0
.end method

.method public onSuspendResumeEvent(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V
    .locals 6

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Running:Z

    if-nez v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->RESUME:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 698
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_SizeHint:I

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PixelFormat:I

    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Quality:I

    iget v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Width:I

    iget v5, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Height:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ideaworks3d/marmalade/s3eCamera2;->s3eCameraStart(IIIII)I

    .line 700
    :cond_2
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SUSPEND:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_3

    .line 702
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->s3eCameraStop()I

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Running:Z

    .line 705
    :cond_3
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SHUTDOWN:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->s3eCameraStop()I

    goto :goto_0
.end method

.method public s3eCameraFetchResolutions([[I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 765
    :try_start_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->getCameraSizes()[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 766
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eCamera2$6;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/s3eCamera2$6;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera2;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 773
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    aput-object v2, p1, v0

    move v2, v1

    .line 774
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 776
    const/4 v0, 0x0

    aget-object v4, p1, v0

    mul-int/lit8 v5, v2, 0x2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v4, v5

    .line 777
    const/4 v0, 0x0

    aget-object v4, p1, v0

    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v4, v5

    .line 774
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 779
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 785
    :goto_1
    return v0

    .line 781
    :catch_0
    move-exception v0

    .line 783
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    move v0, v1

    .line 785
    goto :goto_1
.end method

.method public s3eCameraGetInt(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 593
    packed-switch p1, :pswitch_data_0

    .line 610
    :pswitch_0
    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    .line 596
    :pswitch_1
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->isCameraOpen()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 598
    :pswitch_2
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Facing:I

    goto :goto_0

    .line 600
    :pswitch_3
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->hasCameraSystemFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eCameraHelpAPI;->hasCameraPermissionGranted()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 602
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 601
    goto :goto_1

    .line 604
    :pswitch_4
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_AutoFocus:I

    goto :goto_0

    .line 606
    :pswitch_5
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_FlashMode:I

    goto :goto_0

    .line 608
    :pswitch_6
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TorchMode:I

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public s3eCameraIsFormatSupported(I)Z
    .locals 1

    .prologue
    .line 688
    const/16 v0, 0x1002

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1001

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s3eCameraSetInt(II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 615
    .line 616
    const/4 v2, 0x7

    if-ne p1, v2, :cond_2

    .line 618
    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Facing:I

    if-ne v2, p2, :cond_0

    move v2, v1

    .line 684
    :goto_0
    if-eqz v2, :cond_b

    :goto_1
    return v0

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    aget-object v2, v2, p2

    if-eqz v2, :cond_1

    .line 624
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Facing:I

    .line 625
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CameraInfos:[Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Facing:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    .line 626
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->CameraRestart()Z

    move-result v2

    .line 627
    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_AutoFocus:I

    .line 628
    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_FlashMode:I

    goto :goto_0

    :cond_1
    move v2, v0

    .line 632
    goto :goto_0

    .line 635
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 637
    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_AutoFocus:I

    if-ne v2, p2, :cond_3

    move v2, v1

    .line 639
    goto :goto_0

    .line 641
    :cond_3
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    iget-boolean v2, v2, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_AutoFocusAvailable:Z

    if-nez v2, :cond_4

    move v2, v0

    .line 643
    goto :goto_0

    .line 647
    :cond_4
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_AutoFocus:I

    .line 648
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->CameraRestart()Z

    move-result v2

    goto :goto_0

    .line 651
    :cond_5
    const/16 v2, 0x8

    if-ne p1, v2, :cond_8

    .line 653
    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_FlashMode:I

    if-ne v2, p2, :cond_6

    move v2, v1

    .line 655
    goto :goto_0

    .line 657
    :cond_6
    if-eqz p2, :cond_7

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    iget-boolean v2, v2, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_FlashAvailable:Z

    if-nez v2, :cond_7

    move v2, v0

    .line 659
    goto :goto_0

    .line 663
    :cond_7
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_FlashMode:I

    .line 664
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->CameraRestart()Z

    move-result v2

    goto :goto_0

    .line 667
    :cond_8
    const/16 v2, 0x9

    if-ne p1, v2, :cond_c

    .line 669
    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TorchMode:I

    if-ne v2, p2, :cond_9

    move v2, v1

    .line 671
    goto :goto_0

    .line 673
    :cond_9
    if-eqz p2, :cond_a

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_CurrentCameraInfo:Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;

    iget-boolean v2, v2, Lcom/ideaworks3d/marmalade/s3eCamera2$s3eCameraInfo;->m_FlashAvailable:Z

    if-nez v2, :cond_a

    move v2, v0

    .line 675
    goto :goto_0

    .line 679
    :cond_a
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TorchMode:I

    .line 680
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->CameraRestart()Z

    move-result v2

    goto :goto_0

    :cond_b
    move v0, v1

    .line 684
    goto :goto_1

    :cond_c
    move v2, v0

    goto :goto_0
.end method

.method public s3eCameraStart(IIIII)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 530
    invoke-virtual {p0, p2}, Lcom/ideaworks3d/marmalade/s3eCamera2;->s3eCameraIsFormatSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v0

    .line 534
    :cond_1
    iput p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_SizeHint:I

    .line 535
    iput p4, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Width:I

    .line 536
    iput p5, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Height:I

    .line 537
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_PixelFormat:I

    .line 538
    iput p3, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Quality:I

    .line 539
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->OpenCamera()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Running:Z

    .line 540
    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Running:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s3eCameraStop()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 587
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_Running:Z

    .line 588
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->CloseCamera()V

    .line 589
    return v0
.end method

.method public s3eCameraTakePictureToBuffer()V
    .locals 3

    .prologue
    .line 746
    :try_start_0
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bIsJPEG:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->isCameraOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/s3eCamera2;->onTakeImageCallback([BII)V

    .line 760
    :goto_0
    return-void

    .line 751
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_strFile:Ljava/lang/String;

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bToFile:Z

    .line 753
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->StartCapture(Z)V

    .line 754
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TakePictureSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public s3eCameraTakePictureToFile(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 726
    :try_start_0
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bIsJPEG:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->isCameraOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lcom/ideaworks3d/marmalade/s3eCamera2;->onTakeImageCallback([BII)V

    .line 741
    :goto_0
    return-void

    .line 731
    :cond_1
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_nSaveFilePathType:I

    .line 732
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_strFile:Ljava/lang/String;

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_bToFile:Z

    .line 734
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera2;->StartCapture(Z)V

    .line 735
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera2;->m_TakePictureSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    goto :goto_0
.end method
