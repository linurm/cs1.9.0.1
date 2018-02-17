.class public Lcom/ideaworks3d/marmalade/LoaderView;
.super Landroid/view/SurfaceView;
.source "LoaderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;
    }
.end annotation


# static fields
.field private static g_GLActive:Z

.field private static g_PixelsLast:[I

.field private static m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;


# instance fields
.field private final m_BacklightOn:Ljava/lang/Runnable;

.field private m_EditText:Landroid/widget/EditText;

.field private m_ErrorBody:Ljava/lang/String;

.field private m_ErrorDialog:Landroid/app/Dialog;

.field private m_ErrorRtn:I

.field public m_ErrorRunning:Z

.field private m_ErrorTitle:Ljava/lang/String;

.field private m_ErrorType:I

.field private m_FullScreenBitmap:Landroid/graphics/Bitmap;

.field public m_GL:Ljavax/microedition/khronos/opengles/GL;

.field m_Handler:Landroid/os/Handler;

.field public m_Height:I

.field private m_InputDialog:Landroid/app/Dialog;

.field private m_InputTextDefault:Ljava/lang/String;

.field private m_InputTextFlags:I

.field private m_InputTextResult:Ljava/lang/String;

.field public m_InputTextRunning:Z

.field private m_InputTextTitle:Ljava/lang/String;

.field public m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

.field public m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

.field public m_NewlyCreated:Z

.field private m_Paint:Landroid/graphics/Paint;

.field private m_Pixels:[I

.field private final m_RunOnOSThread:Ljava/lang/Runnable;

.field private final m_ShowError:Ljava/lang/Runnable;

.field private final m_ShowInputText:Ljava/lang/Runnable;

.field private m_SurfaceHolder:Landroid/view/SurfaceHolder;

.field public m_TerminateApplication:Z

.field private m_Vibrator:Landroid/os/Vibrator;

.field private m_VideoState:I

.field private m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

.field public m_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-direct {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;-><init>()V

    sput-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    return-void
.end method

.method public constructor <init>(Lcom/ideaworks3d/marmalade/LoaderActivity;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Paint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    .line 57
    iput-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorDialog:Landroid/app/Dialog;

    .line 58
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRunning:Z

    .line 63
    iput-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputDialog:Landroid/app/Dialog;

    .line 67
    iput-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextResult:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextRunning:Z

    .line 70
    iput-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

    .line 71
    iput v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    .line 73
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_TerminateApplication:Z

    .line 236
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView$1;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderView$1;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ShowError:Ljava/lang/Runnable;

    .line 243
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView$2;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderView$2;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ShowInputText:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView$3;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderView$3;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_BacklightOn:Ljava/lang/Runnable;

    .line 259
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView$4;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderView$4;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_RunOnOSThread:Ljava/lang/Runnable;

    .line 77
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    .line 78
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    .line 79
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Vibrator:Landroid/os/Vibrator;

    .line 80
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    .line 81
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 82
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    invoke-direct {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderKeyboard;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    .line 84
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    if-eqz v0, :cond_1

    .line 86
    new-array v0, v2, [I

    .line 87
    const-string v3, "GL"

    const-string v4, "AndroidSurfaceHolder"

    invoke-static {v3, v4, v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGetInt(Ljava/lang/String;Ljava/lang/String;[I)I

    move-result v3

    if-nez v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    aget v0, v0, v1

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 93
    :cond_1
    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/LoaderView;->setFocusable(Z)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/LoaderView;->setFocusableInTouchMode(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->requestFocus()Z

    .line 96
    const v0, 0x1e432a

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderView;->setId(I)V

    .line 97
    return-void

    :cond_2
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ideaworks3d/marmalade/LoaderView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->showErrorReal()V

    return-void
.end method

.method static synthetic access$100(Lcom/ideaworks3d/marmalade/LoaderView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_RunOnOSThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ideaworks3d/marmalade/LoaderView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->runOnOSThreadNative()V

    return-void
.end method

.method static synthetic access$300(Lcom/ideaworks3d/marmalade/LoaderView;)Lcom/ideaworks3d/marmalade/S3EVideoView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ideaworks3d/marmalade/LoaderView;Lcom/ideaworks3d/marmalade/S3EVideoView;)Lcom/ideaworks3d/marmalade/S3EVideoView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

    return-object p1
.end method

.method private backlightOn()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_BacklightOn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method private getCurrentKeyboardId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 118
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 120
    const-string v1, ""

    .line 121
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 123
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 124
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v6}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "default_input_method"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 129
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private native runOnOSThreadNative()V
.end method

.method private native setInputText(Ljava/lang/String;)V
.end method

.method private native setPixelsNative(II[IZ)V
.end method

.method private showErrorReal()V
    .locals 3

    .prologue
    .line 479
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    const/4 v1, 0x0

    iput v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRtn:I

    .line 481
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 482
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 483
    const-string v1, "Continue"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorType:I

    if-lez v1, :cond_0

    .line 486
    const-string v1, "Stop"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    :cond_0
    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorType:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 490
    const-string v1, "Ignore"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 492
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorDialog:Landroid/app/Dialog;

    .line 493
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 494
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 496
    return-void
.end method

.method private terminateApplication()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_TerminateApplication:Z

    .line 156
    return-void
.end method

.method private videoIsPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoGetStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native videoStoppedNotify()V
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 686
    const-string v0, "AndroidIgnoreBackKeyFromPointerDevice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 689
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 690
    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 693
    const/4 v0, 0x1

    .line 699
    :goto_0
    return v0

    .line 695
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 699
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public doDraw()V
    .locals 9

    .prologue
    .line 811
    const/4 v8, 0x0

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_FullScreenBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 835
    if-eqz v8, :cond_0

    .line 836
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 835
    if-eqz v8, :cond_0

    .line 836
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 824
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_FullScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    iget v7, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 825
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 826
    if-nez v1, :cond_3

    .line 835
    if-eqz v1, :cond_0

    .line 836
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 831
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_FullScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 835
    if-eqz v1, :cond_0

    .line 836
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 835
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_4

    .line 836
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_4
    throw v0

    .line 835
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public doneInputText(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public enableRespondingToRotation()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->onSplashFinished()V

    .line 394
    return-void
.end method

.method public getCurrentOrientation()I
    .locals 7

    .prologue
    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v5, "window"

    invoke-virtual {v0, v5}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-lt v0, v6, :cond_1

    move v0, v1

    .line 102
    :goto_0
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 113
    const/4 v2, -0x1

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 101
    goto :goto_0

    .line 105
    :pswitch_0
    if-nez v0, :cond_0

    move v2, v1

    goto :goto_1

    .line 107
    :pswitch_1
    if-nez v0, :cond_0

    move v2, v3

    goto :goto_1

    .line 109
    :pswitch_2
    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    move v2, v3

    goto :goto_1

    .line 111
    :pswitch_3
    if-eqz v0, :cond_3

    :goto_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getInputString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 561
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextTitle:Ljava/lang/String;

    .line 562
    iput-object p2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextDefault:Ljava/lang/String;

    .line 563
    iput p3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextFlags:I

    .line 564
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ShowInputText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    return-void
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glInit(I)Z
    .locals 2

    .prologue
    .line 597
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->started()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/ideaworks3d/marmalade/LoaderGL;->startGL(Landroid/view/SurfaceHolder;I)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_GL:Ljavax/microedition/khronos/opengles/GL;

    .line 605
    :cond_0
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    return v0
.end method

.method public glPause()V
    .locals 3

    .prologue
    .line 622
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    if-eqz v0, :cond_0

    .line 624
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->started()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 627
    const-string v1, "GL"

    const-string v2, "AndroidTerminateGLOnPause"

    invoke-static {v1, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGetInt(Ljava/lang/String;Ljava/lang/String;[I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 628
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->stopGL()V

    .line 631
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_GL:Ljavax/microedition/khronos/opengles/GL;

    .line 635
    :cond_0
    return-void

    .line 630
    :cond_1
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->pauseGL()V

    goto :goto_0
.end method

.method public glReInit()V
    .locals 2

    .prologue
    .line 610
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    if-eqz v0, :cond_0

    .line 612
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->started()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderGL;->restartGL(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_GL:Ljavax/microedition/khronos/opengles/GL;

    .line 618
    :cond_0
    return-void
.end method

.method public glResume()V
    .locals 3

    .prologue
    .line 639
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    if-eqz v0, :cond_0

    .line 641
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->started()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 644
    const-string v1, "GL"

    const-string v2, "AndroidTerminateGLOnPause"

    invoke-static {v1, v2, v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGetInt(Ljava/lang/String;Ljava/lang/String;[I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 645
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderGL;->restartGL(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_GL:Ljavax/microedition/khronos/opengles/GL;

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_SurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderGL;->resumeGL(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_GL:Ljavax/microedition/khronos/opengles/GL;

    goto :goto_0
.end method

.method public glSwapBuffers()V
    .locals 1

    .prologue
    .line 668
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->started()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    :goto_0
    return-void

    .line 673
    :cond_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->swap()V

    goto :goto_0
.end method

.method public glTerm()V
    .locals 1

    .prologue
    .line 655
    sget-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    if-eqz v0, :cond_1

    .line 657
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->started()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderGL;->stopGL()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_GL:Ljavax/microedition/khronos/opengles/GL;

    .line 662
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ideaworks3d/marmalade/LoaderView;->g_GLActive:Z

    .line 665
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 194
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextResult:Ljava/lang/String;

    .line 196
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 200
    packed-switch p2, :pswitch_data_0

    .line 213
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 203
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRtn:I

    goto :goto_1

    .line 206
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRtn:I

    goto :goto_1

    .line 209
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRtn:I

    goto :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->getCurrentKeyboardId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 147
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object v0

    .line 143
    :cond_1
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 144
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderKeyboard;->getKeyboardInputType()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 168
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextResult:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderView;->setInputText(Ljava/lang/String;)V

    .line 176
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextRunning:Z

    .line 177
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputDialog:Landroid/app/Dialog;

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 181
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorDialog:Landroid/app/Dialog;

    .line 182
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRunning:Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 705
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 707
    return-void
.end method

.method public onKeyEvent(IILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 222
    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextRunning:Z

    if-eqz v1, :cond_1

    .line 224
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 226
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextRunning:Z

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    invoke-virtual {p0, p3}, Lcom/ideaworks3d/marmalade/LoaderView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderKeyboard;->onKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderKeyboard:Lcom/ideaworks3d/marmalade/LoaderKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/ideaworks3d/marmalade/LoaderKeyboard;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/LoaderThread;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runOnOSThread()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_RunOnOSThread:Ljava/lang/Runnable;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_RunOnOSThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :try_start_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_RunOnOSThread:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showError(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 500
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    :goto_0
    return v0

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ShowError:Ljava/lang/Runnable;

    monitor-enter v1

    .line 508
    :try_start_0
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorTitle:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorBody:Ljava/lang/String;

    .line 510
    iput p3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorType:I

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRtn:I

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRunning:Z

    .line 513
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ShowError:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    :goto_1
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRunning:Z

    if-eqz v0, :cond_1

    .line 517
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eDeviceYield(I)V

    goto :goto_1

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 520
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_ErrorRtn:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public showInputTextReal()V
    .locals 2

    .prologue
    .line 528
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    .line 529
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 533
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 547
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 549
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 550
    const-string v1, "OK"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 551
    const-string v1, "Cancel"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputDialog:Landroid/app/Dialog;

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextRunning:Z

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextResult:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 556
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 557
    return-void

    .line 535
    :cond_1
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 539
    :cond_2
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 543
    :cond_3
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_InputTextFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_EditText:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    .prologue
    .line 746
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->skipSurfaceChange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :goto_0
    monitor-exit p0

    return-void

    .line 753
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->suspendForSurfaceChange()V

    .line 754
    iput p3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    .line 755
    iput p4, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    .line 756
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_FullScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_FullScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 759
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_FullScreenBitmap:Landroid/graphics/Bitmap;

    .line 761
    :cond_1
    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_FullScreenBitmap:Landroid/graphics/Bitmap;

    .line 762
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    array-length v1, v1

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    iget v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    mul-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    .line 764
    :cond_2
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderView;->g_PixelsLast:[I

    if-eqz v1, :cond_4

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderView;->g_PixelsLast:[I

    array-length v1, v1

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    iget v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    mul-int/2addr v2, v3

    if-lt v1, v2, :cond_4

    .line 766
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderView;->g_PixelsLast:[I

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    .line 776
    :cond_3
    :goto_1
    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    iget-boolean v4, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_NewlyCreated:Z

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ideaworks3d/marmalade/LoaderView;->setPixelsNative(II[IZ)V

    .line 777
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_NewlyCreated:Z

    .line 778
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->resumeAfterSurfaceChange()V

    .line 779
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 771
    :cond_4
    :try_start_2
    iget v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    iget v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    .line 772
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    sput-object v1, Lcom/ideaworks3d/marmalade/LoaderView;->g_PixelsLast:[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_NewlyCreated:Z

    .line 712
    return-void
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    .prologue
    .line 717
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderActivity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 718
    if-nez v0, :cond_0

    .line 741
    :goto_0
    monitor-exit p0

    return-void

    .line 720
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->suspendForSurfaceChange()V

    .line 721
    const/4 v1, 0x0

    iput v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Width:I

    .line 722
    const/4 v1, 0x0

    iput v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Height:I

    .line 723
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 725
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->glPause()V

    .line 735
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_FullScreenBitmap:Landroid/graphics/Bitmap;

    .line 736
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ideaworks3d/marmalade/LoaderView;->setPixelsNative(II[IZ)V

    .line 737
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    .line 738
    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->resumeAfterSurfaceChange()V

    .line 739
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 729
    :cond_2
    :try_start_2
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderGL;->started()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderView;->m_LoaderGL:Lcom/ideaworks3d/marmalade/LoaderGL;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderGL;->stopGL()V

    .line 732
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_GL:Ljavax/microedition/khronos/opengles/GL;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public vibrateAvailable()Z
    .locals 3

    .prologue
    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 582
    const-string v1, "hasVibrator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Vibrator:Landroid/os/Vibrator;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 587
    :goto_0
    return v0

    .line 585
    :catch_0
    move-exception v0

    .line 587
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public vibrateStart(J)V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 570
    return-void
.end method

.method public vibrateStop()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 575
    return-void
.end method

.method public videoGetPosition()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->videoGetPosition()I

    move-result v0

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoGetStatus()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    return v0
.end method

.method public videoPause()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 407
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 409
    iput v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    .line 410
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;Lcom/ideaworks3d/marmalade/LoaderView$1;)V

    .line 411
    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->setState(I)V

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->runOnUiThread(Z)I

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public videoPlay(Ljava/lang/String;IIIIIIZJJ)I
    .locals 15

    .prologue
    .line 399
    const/4 v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    .line 400
    new-instance v1, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;Lcom/ideaworks3d/marmalade/LoaderView$1;)V

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    .line 401
    invoke-virtual/range {v1 .. v13}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->play(Ljava/lang/String;IIIIIIZJJ)V

    .line 402
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->runOnUiThread(Z)I

    move-result v0

    return v0
.end method

.method public videoResume()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 419
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 421
    iput v2, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    .line 422
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;Lcom/ideaworks3d/marmalade/LoaderView$1;)V

    .line 423
    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->setState(I)V

    .line 424
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->runOnUiThread(Z)I

    move-result v0

    .line 426
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public videoSetVolume(I)V
    .locals 2

    .prologue
    .line 451
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;Lcom/ideaworks3d/marmalade/LoaderView$1;)V

    .line 452
    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->setVolume(I)V

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->runOnUiThread(Z)I

    .line 454
    return-void
.end method

.method public videoStop()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 435
    .line 436
    iget v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    if-eqz v0, :cond_1

    .line 438
    new-instance v0, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;-><init>(Lcom/ideaworks3d/marmalade/LoaderView;Lcom/ideaworks3d/marmalade/LoaderView$1;)V

    .line 439
    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->setState(I)V

    .line 440
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderView$VideoRunner;->runOnUiThread(Z)I

    .line 441
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoIsPlaying()Z

    move-result v0

    .line 442
    iput v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    .line 444
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoIsPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoStopped()V

    .line 448
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public videoStopped()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/S3EVideoView;->videoRemoveView()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoView:Lcom/ideaworks3d/marmalade/S3EVideoView;

    .line 473
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_VideoState:I

    .line 474
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderView;->videoStoppedNotify()V

    .line 475
    return-void
.end method

.method public waitForSurface()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 785
    monitor-enter p0

    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 792
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/LoaderView;->m_Pixels:[I

    if-nez v1, :cond_1

    .line 803
    monitor-exit p0

    .line 807
    :goto_0
    return v0

    .line 794
    :catch_0
    move-exception v1

    .line 797
    monitor-exit p0

    goto :goto_0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 807
    const/4 v0, 0x1

    goto :goto_0
.end method
