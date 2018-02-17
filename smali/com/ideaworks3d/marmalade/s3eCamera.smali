.class Lcom/ideaworks3d/marmalade/s3eCamera;
.super Ljava/lang/Object;
.source "s3eCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/ideaworks3d/marmalade/SuspendResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;,
        Lcom/ideaworks3d/marmalade/s3eCamera$Preview;
    }
.end annotation


# static fields
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

.field static final S3E_CAMERA_QUALITY:I = 0x6

.field static final S3E_CAMERA_SAVE_PATH_CAMERA:I = 0x2

.field static final S3E_CAMERA_SAVE_PATH_GALLERY:I = 0x1

.field static final S3E_CAMERA_SAVE_PATH_GALLERY_AND_CAMERA:I = 0x3

.field static final S3E_CAMERA_SAVE_PATH_USER:I = 0x0

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

.field static final S3E_CAMERA_TYPE_UNAVAILABLE:I = -0x1

.field static final S3E_RESULT_ERROR:I = 0x1

.field static final S3E_RESULT_SUCCESS:I

.field private static final m_CameraLock:Ljava/lang/Object;

.field private static final m_CameraOpenSem:Ljava/util/concurrent/Semaphore;


# instance fields
.field m_AutoFocus:I

.field private m_AutoFocusIsOn:Z

.field private m_AutoFocusModes:[Ljava/lang/String;

.field private m_Camera:Landroid/hardware/Camera;

.field m_FlashMode:I

.field m_Height:I

.field private m_NeedsRemovePreview:Z

.field private m_NonAutoFocusModes:[Ljava/lang/String;

.field m_PixelFormat:I

.field private m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

.field m_Quality:I

.field private m_Running:Z

.field m_SizeHint:I

.field m_TorchMode:I

.field m_Type:I

.field private m_TypesToCameraId:[I

.field m_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraOpenSem:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    .line 70
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Width:I

    .line 71
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Height:I

    .line 72
    const/16 v0, 0x1001

    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    .line 73
    iput v5, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    .line 74
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    .line 75
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocus:I

    .line 76
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FlashMode:I

    .line 77
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TorchMode:I

    .line 80
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    .line 81
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 86
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    .line 92
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    .line 94
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "continuous-video"

    aput-object v2, v0, v1

    const-string v2, "continuous-picture"

    aput-object v2, v0, v4

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusModes:[Ljava/lang/String;

    .line 98
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "auto"

    aput-object v2, v0, v1

    const-string v2, "fixed"

    aput-object v2, v0, v4

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NonAutoFocusModes:[Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->addSuspendResumeListener(Lcom/ideaworks3d/marmalade/SuspendResumeListener;)V

    .line 105
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    const-string v2, "android.permission.CAMERA"

    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v3}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v0, v1

    .line 109
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 111
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 112
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :pswitch_0
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    aput v0, v3, v1

    goto :goto_2

    .line 118
    :pswitch_1
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    aput v0, v3, v4

    goto :goto_2

    .line 124
    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    aget v0, v0, v1

    if-eq v0, v5, :cond_2

    .line 128
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    goto :goto_0

    .line 92
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private CloseCamera()V
    .locals 3

    .prologue
    .line 151
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 155
    monitor-exit v1

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 158
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 159
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    .line 161
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private OpenCamera()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 142
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    aget v1, v1, v2

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    .line 147
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ideaworks3d/marmalade/s3eCamera;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ideaworks3d/marmalade/s3eCamera;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ideaworks3d/marmalade/s3eCamera;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraOpenSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ideaworks3d/marmalade/s3eCamera;[BII)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/s3eCamera;->onTakeImageCallback([BII)V

    return-void
.end method

.method private chooseFocusMode([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 201
    const/4 v0, 0x0

    move v1, v2

    .line 202
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 204
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/ideaworks3d/marmalade/s3eCamera;->isFocusModeSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    aget-object v0, p1, v1

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    const/4 v1, 0x2

    .line 214
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setFocusMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->forceRefocus(Ljava/lang/String;)V

    .line 225
    :cond_3
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    .line 217
    :catch_0
    move-exception v3

    .line 222
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    goto :goto_1
.end method

.method private forceRefocus(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$1;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$1;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 240
    :cond_0
    return-void
.end method

.method private getCameraSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 500
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$4;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$4;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-object v0

    .line 509
    :catch_0
    move-exception v0

    .line 513
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 479
    if-le p2, p3, :cond_0

    move v4, p2

    .line 480
    :goto_0
    if-ge p2, p3, :cond_1

    .line 481
    :goto_1
    const/4 v3, 0x0

    .line 482
    const v2, 0x7fffffff

    .line 483
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 486
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 487
    if-ge v1, v2, :cond_3

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_3
    move v2, v0

    move-object v3, v1

    .line 492
    goto :goto_2

    :cond_0
    move v4, p3

    .line 479
    goto :goto_0

    :cond_1
    move p2, p3

    .line 480
    goto :goto_1

    .line 493
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_3
.end method

.method private isCameraOpen()Z
    .locals 2

    .prologue
    .line 135
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isFocusModeSupported(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    :cond_0
    return v0
.end method

.method private native onTakeImageCallback([BII)V
.end method

.method private native previewCallback([BIIII)V
.end method

.method static final s3eCameraFlashModeToPlatform(I[Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    packed-switch p0, :pswitch_data_0

    .line 303
    const-string v0, "off"

    aput-object v0, p1, v1

    move v0, v1

    .line 304
    :goto_0
    return v0

    .line 291
    :pswitch_0
    const-string v2, "off"

    aput-object v2, p1, v1

    goto :goto_0

    .line 294
    :pswitch_1
    const-string v2, "on"

    aput-object v2, p1, v1

    goto :goto_0

    .line 297
    :pswitch_2
    const-string v2, "auto"

    aput-object v2, p1, v1

    goto :goto_0

    .line 300
    :pswitch_3
    const-string v2, "red-eye"

    aput-object v2, p1, v1

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static final s3eCameraTorchModeToPlatform(I[Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    packed-switch p0, :pswitch_data_0

    .line 320
    const-string v0, "off"

    aput-object v0, p1, v1

    move v0, v1

    .line 321
    :goto_0
    return v0

    .line 311
    :pswitch_0
    const-string v2, "off"

    aput-object v2, p1, v1

    goto :goto_0

    .line 314
    :pswitch_1
    const-string v2, "torch"

    aput-object v2, p1, v1

    goto :goto_0

    .line 317
    :pswitch_2
    const-string v0, "off"

    aput-object v0, p1, v1

    move v0, v1

    .line 318
    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private s3ePixelFormatToPlatform(I)I
    .locals 1

    .prologue
    .line 391
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_0

    .line 392
    const/16 v0, 0x11

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoFocusOffParams()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NonAutoFocusModes:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->chooseFocusMode([Ljava/lang/String;)Z

    move-result v1

    .line 250
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    .line 251
    return v1

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoFocusOnParams()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusModes:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->chooseFocusMode([Ljava/lang/String;)Z

    move-result v0

    .line 244
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    .line 245
    return v0
.end method

.method private setFocusMode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 198
    return-void
.end method


# virtual methods
.method public createPreview()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 606
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 607
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 608
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 609
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 610
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 611
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 612
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 613
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 614
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 615
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 616
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    sget-object v2, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v1, p0, v2}, Lcom/ideaworks3d/marmalade/s3eCamera$Preview;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    .line 617
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 618
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    return v3
.end method

.method getFlashMode()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FlashMode:I

    return v0
.end method

.method getTorchMode()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TorchMode:I

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    .prologue
    const/16 v2, 0x1001

    .line 402
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 403
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    if-ne v1, v2, :cond_0

    .line 404
    invoke-direct {p0, v2}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3ePixelFormatToPlatform(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    if-ne v1, v2, :cond_0

    array-length v1, p1

    .line 405
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    .line 412
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 413
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->getOrientation()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 411
    invoke-direct/range {v0 .. v5}, Lcom/ideaworks3d/marmalade/s3eCamera;->previewCallback([BIIII)V

    goto :goto_0
.end method

.method public onSuspendResumeEvent(Lcom/ideaworks3d/marmalade/SuspendResumeEvent;)V
    .locals 6

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    if-nez v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->RESUME:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 592
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    iget v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Width:I

    iget v5, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Height:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStart(IIIII)I

    .line 594
    :cond_2
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SUSPEND:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStop()I

    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    .line 599
    :cond_3
    iget-object v0, p1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent;->eventType:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    sget-object v1, Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;->SHUTDOWN:Lcom/ideaworks3d/marmalade/SuspendResumeEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStop()I

    goto :goto_0
.end method

.method public removePreview()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 623
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    if-eqz v1, :cond_0

    .line 625
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    .line 626
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 627
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Preview:Lcom/ideaworks3d/marmalade/s3eCamera$Preview;

    .line 630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public s3eCameraFetchResolutions([[I)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 723
    .line 724
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 726
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    :goto_0
    return v2

    .line 728
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 730
    :goto_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 731
    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->getCameraSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v4

    .line 732
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    aput-object v0, p1, v2

    move v3, v2

    .line 733
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 735
    aget-object v5, p1, v2

    mul-int/lit8 v6, v3, 0x2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    aput v0, v5, v6

    .line 736
    aget-object v5, p1, v2

    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    aput v0, v5, v6

    .line 733
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 738
    :cond_1
    if-eqz v1, :cond_2

    .line 739
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 740
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public s3eCameraGetInt(I)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 168
    :pswitch_1
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 170
    :pswitch_2
    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 172
    :pswitch_3
    iget-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 174
    :pswitch_4
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    goto :goto_0

    .line 176
    :pswitch_5
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->getFlashMode()I

    move-result v0

    goto :goto_0

    .line 178
    :pswitch_6
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->getTorchMode()I

    move-result v0

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public s3eCameraIsFormatSupported(I)Z
    .locals 1

    .prologue
    .line 398
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s3eCameraSetInt(II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 256
    .line 257
    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    .line 259
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    array-length v2, v2

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    aget v2, v2, p2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    if-eq v2, p2, :cond_2

    .line 263
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    .line 264
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    .line 265
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 268
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    move v1, v0

    .line 284
    goto :goto_0

    :cond_3
    move v0, v1

    .line 268
    goto :goto_1

    .line 272
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 274
    if-nez p2, :cond_6

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setAutoFocusOffParams()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setAutoFocusOnParams()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 276
    :cond_7
    const/16 v1, 0x8

    if-ne p1, v1, :cond_8

    .line 278
    invoke-virtual {p0, p2}, Lcom/ideaworks3d/marmalade/s3eCamera;->setFlashMode(I)I

    move-result v0

    goto :goto_1

    .line 280
    :cond_8
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    .line 282
    invoke-virtual {p0, p2}, Lcom/ideaworks3d/marmalade/s3eCamera;->setTorchMode(I)I

    move-result v0

    goto :goto_1
.end method

.method public s3eCameraStart(IIIII)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 418
    iput p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    .line 419
    iput p4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Width:I

    .line 420
    iput p5, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Height:I

    .line 421
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    .line 422
    iput p3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Quality:I

    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t open the camera."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :catch_0
    move-exception v1

    .line 457
    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraStop()I

    .line 460
    :goto_0
    return v0

    .line 427
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setCameraParameters()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 428
    const-string v2, "Creating image buffer"

    invoke-static {v2}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 429
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 430
    const-string v1, "Invoking preview methods"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 432
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 436
    :try_start_2
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v2, Lcom/ideaworks3d/marmalade/s3eCamera$2;

    invoke-direct {v2, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$2;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 442
    sget-object v1, Lcom/ideaworks3d/marmalade/s3eCamera;->m_CameraOpenSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 450
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 451
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 453
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public s3eCameraStop()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 464
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Running:Z

    .line 465
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 466
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_NeedsRemovePreview:Z

    if-eqz v0, :cond_0

    .line 468
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eCamera$3;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$3;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 475
    :cond_0
    return v2
.end method

.method public s3eCameraTakePictureToBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 710
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 712
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    .line 713
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_bToFile:Z

    .line 714
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FlashMode:I

    invoke-virtual {p0, v1}, Lcom/ideaworks3d/marmalade/s3eCamera;->setFlashMode(I)I

    .line 715
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2, v2, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 719
    :goto_0
    return-void

    .line 718
    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0xc

    invoke-direct {p0, v2, v0, v1}, Lcom/ideaworks3d/marmalade/s3eCamera;->onTakeImageCallback([BII)V

    goto :goto_0
.end method

.method public s3eCameraTakePictureToFile(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 695
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;-><init>(Lcom/ideaworks3d/marmalade/s3eCamera;)V

    .line 698
    iput p2, v0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_nType:I

    .line 699
    iput-object p1, v0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_strFile:Ljava/lang/String;

    .line 700
    iput-boolean v1, v0, Lcom/ideaworks3d/marmalade/s3eCamera$s3eCameraTakePicture;->m_bToFile:Z

    .line 701
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FlashMode:I

    invoke-virtual {p0, v1}, Lcom/ideaworks3d/marmalade/s3eCamera;->setFlashMode(I)I

    .line 702
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2, v2, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 706
    :goto_0
    return-void

    .line 705
    :cond_0
    const/16 v0, 0xc

    invoke-direct {p0, v2, v1, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->onTakeImageCallback([BII)V

    goto :goto_0
.end method

.method public setCameraParameters()Landroid/hardware/Camera$Size;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 517
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 518
    const/4 v0, 0x0

    .line 584
    :goto_0
    return-object v0

    .line 519
    :cond_0
    const-string v1, "Setting camera parameters"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 521
    invoke-direct {p0, v1}, Lcom/ideaworks3d/marmalade/s3eCamera;->getCameraSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 524
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v3

    .line 526
    iget v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_PixelFormat:I

    invoke-direct {p0, v4}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3ePixelFormatToPlatform(I)I

    move-result v4

    .line 527
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 534
    :cond_1
    :goto_1
    const-string v3, "Setting preview size"

    invoke-static {v3}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 536
    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Width:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Height:I

    if-lez v3, :cond_2

    .line 538
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Width:I

    iget v5, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Height:I

    invoke-direct {v0, v3, v4, v5}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 539
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 540
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t apply desired size."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_2
    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 546
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 566
    :cond_3
    :goto_2
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting camera ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    iget v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 568
    const-string v2, "camera-id"

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TypesToCameraId:[I

    iget v4, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Type:I

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 571
    :try_start_1
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 572
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 573
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 574
    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_AutoFocusIsOn:Z

    if-eqz v1, :cond_7

    .line 575
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setAutoFocusOnParams()Z

    .line 578
    :goto_3
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TorchMode:I

    invoke-virtual {p0, v1}, Lcom/ideaworks3d/marmalade/s3eCamera;->setTorchMode(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 580
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 551
    :cond_4
    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    if-ne v3, v0, :cond_6

    .line 553
    const/4 v0, 0x2

    .line 559
    :cond_5
    :goto_4
    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v3, v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    .line 560
    iget v4, v3, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    div-int/2addr v4, v0

    .line 561
    iget v3, v3, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    div-int v0, v3, v0

    .line 563
    invoke-direct {p0, v2, v4, v0}, Lcom/ideaworks3d/marmalade/s3eCamera;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    goto :goto_2

    .line 555
    :cond_6
    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_SizeHint:I

    if-nez v3, :cond_5

    .line 557
    const/4 v0, 0x4

    goto :goto_4

    .line 577
    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->setAutoFocusOffParams()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 530
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method setFlashMode(I)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 325
    .line 326
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 328
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 332
    :goto_1
    new-array v4, v1, [Ljava/lang/String;

    .line 333
    invoke-static {p1, v4}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraFlashModeToPlatform(I[Ljava/lang/String;)Z

    move-result v5

    .line 334
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 335
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 336
    if-eqz v3, :cond_3

    aget-object v7, v4, v2

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 337
    :goto_2
    if-eqz v3, :cond_1

    .line 339
    iput p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_FlashMode:I

    .line 341
    :cond_1
    if-eqz v0, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 350
    :cond_2
    :goto_3
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    :goto_4
    move v1, v2

    goto :goto_0

    :cond_3
    move v3, v2

    .line 336
    goto :goto_2

    .line 345
    :cond_4
    if-eqz v3, :cond_2

    .line 347
    aget-object v0, v4, v2

    invoke-virtual {v6, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_3

    :cond_5
    move v2, v1

    .line 350
    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method setTorchMode(I)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    .line 359
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->isCameraOpen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 361
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->OpenCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 365
    :goto_1
    new-array v4, v1, [Ljava/lang/String;

    .line 366
    invoke-static {p1, v4}, Lcom/ideaworks3d/marmalade/s3eCamera;->s3eCameraTorchModeToPlatform(I[Ljava/lang/String;)Z

    move-result v5

    .line 367
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 368
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 369
    if-eqz v3, :cond_3

    aget-object v7, v4, v2

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 370
    :goto_2
    if-eqz v3, :cond_1

    .line 372
    iput p1, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_TorchMode:I

    .line 374
    :cond_1
    if-eqz v0, :cond_4

    .line 376
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eCamera;->CloseCamera()V

    .line 383
    :cond_2
    :goto_3
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    :goto_4
    move v1, v2

    goto :goto_0

    :cond_3
    move v3, v2

    .line 369
    goto :goto_2

    .line 378
    :cond_4
    if-eqz v3, :cond_2

    .line 380
    aget-object v0, v4, v2

    invoke-virtual {v6, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eCamera;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_3

    :cond_5
    move v2, v1

    .line 383
    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_1
.end method
