.class Ls3eWebView;
.super Ljava/lang/Object;
.source "s3eWebView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3eWebView$InputHack;,
        Ls3eWebView$AccessWebClient;,
        Ls3eWebView$WMJavaScriptInterface;,
        Ls3eWebView$s3eWebChromeClient;
    }
.end annotation


# static fields
.field static final S3E_WEBVIEW_HEIGHT:I = 0x2

.field static final S3E_WEBVIEW_LEFT:I = 0x3

.field static final S3E_WEBVIEW_SCROLLING:I = 0xb

.field static final S3E_WEBVIEW_TOP:I = 0x4

.field static final S3E_WEBVIEW_WIDTH:I = 0x1

.field static final S3E_WEBVIEW_ZOOMING:I = 0xc


# instance fields
.field private m_Container:Landroid/widget/RelativeLayout;

.field private m_Handles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private m_InputHack:Ls3eWebView$InputHack;

.field private m_LastHandle:I

.field private m_ModalHandle:I

.field private m_UAString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Ls3eWebView;->m_LastHandle:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ls3eWebView;->m_ModalHandle:I

    .line 164
    return-void
.end method

.method static synthetic access$000(Ls3eWebView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ls3eWebView;->s3eWebViewExec(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ls3eWebView;Landroid/webkit/WebView;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ls3eWebView;->findHandle(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ls3eWebView;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ls3eWebView;->s3eWebViewLoaded(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ls3eWebView;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ls3eWebView;->s3eWebViewLoading(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ls3eWebView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ls3eWebView;->s3eWebViewFailed(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ls3eWebView;IZ)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ls3eWebView;->s3eWebViewCreate_real(IZ)V

    return-void
.end method

.method static synthetic access$700(Ls3eWebView;I)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private findHandle(Landroid/webkit/WebView;)I
    .locals 5

    .prologue
    .line 575
    const/4 v2, -0x1

    .line 576
    iget-object v3, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    monitor-enter v3

    .line 578
    :try_start_0
    iget-object v0, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 580
    iget-object v1, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 581
    if-ne v1, p1, :cond_0

    .line 583
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 587
    :goto_0
    monitor-exit v3

    .line 588
    return v0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private findWebView(I)Landroid/webkit/WebView;
    .locals 3

    .prologue
    .line 562
    iget-object v1, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    monitor-enter v1

    .line 564
    :try_start_0
    iget-object v0, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 565
    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid handle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x0

    monitor-exit v1

    .line 570
    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private s3eWebViewCreate(Z)I
    .locals 3

    .prologue
    .line 276
    iget v0, p0, Ls3eWebView;->m_LastHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls3eWebView;->m_LastHandle:I

    .line 277
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v1

    new-instance v2, Ls3eWebView$2;

    invoke-direct {v2, p0, v0, p1}, Ls3eWebView$2;-><init>(Ls3eWebView;IZ)V

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 284
    const-string v1, "WebView creation complete"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 285
    return v0
.end method

.method private s3eWebViewCreate_real(IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    const-string v0, "CreateWebView"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 218
    new-instance v3, Landroid/webkit/WebView;

    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 221
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v4, "enablePlatformNotifications"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    const-string v0, "AndroidWebViewZoomControlsEnable"

    invoke-static {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 230
    :goto_1
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 231
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 232
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 233
    new-instance v0, Ls3eWebView$AccessWebClient;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Ls3eWebView$AccessWebClient;-><init>(Ls3eWebView;Ls3eWebView$1;)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 234
    const-string v0, "AndroidWebViewAPIEnable"

    invoke-static {v0, v2}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 235
    :goto_2
    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 238
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 239
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 240
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "database"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 242
    const-string v0, "WebViewSQLDatabaseQuota"

    const/high16 v1, 0x200000

    invoke-static {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v0

    .line 243
    new-instance v1, Ls3eWebView$1;

    invoke-direct {v1, p0, p1, v0}, Ls3eWebView$1;-><init>(Ls3eWebView;II)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 261
    :goto_3
    if-eqz p2, :cond_4

    .line 262
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 265
    :goto_4
    invoke-virtual {v3, p0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    iget-object v1, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    monitor-enter v1

    .line 268
    :try_start_1
    iget-object v0, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    new-instance v0, Ls3eWebView$WMJavaScriptInterface;

    invoke-direct {v0, p0, p1}, Ls3eWebView$WMJavaScriptInterface;-><init>(Ls3eWebView;I)V

    .line 271
    const-string v1, "s3e"

    invoke-virtual {v3, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Ls3eWebView$InputHack;

    invoke-direct {v0, p0}, Ls3eWebView$InputHack;-><init>(Ls3eWebView;)V

    iput-object v0, p0, Ls3eWebView;->m_InputHack:Ls3eWebView$InputHack;

    .line 273
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception calling enablePlatformNotifications via reflection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 229
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 234
    goto/16 :goto_2

    .line 259
    :cond_3
    new-instance v0, Ls3eWebView$s3eWebChromeClient;

    invoke-direct {v0, p0, p1}, Ls3eWebView$s3eWebChromeClient;-><init>(Ls3eWebView;I)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_3

    .line 264
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_4

    .line 269
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native s3eWebViewExec(ILjava/lang/String;)V
.end method

.method private native s3eWebViewFailed(ILjava/lang/String;)V
.end method

.method private native s3eWebViewLoaded(ILjava/lang/String;)Z
.end method

.method private native s3eWebViewLoading(ILjava/lang/String;)Z
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 535
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget v0, p0, Ls3eWebView;->m_ModalHandle:I

    if-eq v0, v1, :cond_0

    .line 537
    const-string v0, "Quitting modal WebView"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 538
    iget v0, p0, Ls3eWebView;->m_ModalHandle:I

    .line 539
    iput v1, p0, Ls3eWebView;->m_ModalHandle:I

    .line 540
    invoke-virtual {p0, v0}, Ls3eWebView;->s3eWebViewRelease(I)I

    .line 541
    const/4 v0, 0x1

    .line 545
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 558
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 554
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public s3eWebViewClearCache(I)I
    .locals 3

    .prologue
    .line 448
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 449
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v1

    new-instance v2, Ls3eWebView$6;

    invoke-direct {v2, p0, p1, v0}, Ls3eWebView$6;-><init>(Ls3eWebView;I[I)V

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 463
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public s3eWebViewCreateModal(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 479
    iget v0, p0, Ls3eWebView;->m_ModalHandle:I

    if-eq v0, v7, :cond_0

    .line 480
    const/4 v2, 0x2

    .line 493
    :goto_0
    return v2

    .line 481
    :cond_0
    invoke-direct {p0, v6}, Ls3eWebView;->s3eWebViewCreate(Z)I

    move-result v0

    iput v0, p0, Ls3eWebView;->m_ModalHandle:I

    .line 482
    iget v0, p0, Ls3eWebView;->m_ModalHandle:I

    invoke-virtual {p0, v0, p1}, Ls3eWebView;->s3eWebViewNavigate(ILjava/lang/String;)I

    .line 483
    iget v1, p0, Ls3eWebView;->m_ModalHandle:I

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ls3eWebView;->s3eWebViewShow(IIIII)I

    .line 484
    iget v0, p0, Ls3eWebView;->m_ModalHandle:I

    invoke-direct {p0, v0}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v0

    .line 485
    if-nez v0, :cond_1

    move v2, v6

    .line 486
    goto :goto_0

    .line 487
    :cond_1
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->pushKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 488
    :goto_1
    iget v0, p0, Ls3eWebView;->m_ModalHandle:I

    if-eq v0, v7, :cond_2

    .line 490
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eDeviceYield(I)V

    goto :goto_1

    .line 492
    :cond_2
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->popKeyListener()Landroid/view/View$OnKeyListener;

    goto :goto_0
.end method

.method public s3eWebViewGetHandleProperty(II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 395
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v3

    .line 396
    const/4 v2, 0x0

    .line 397
    packed-switch p2, :pswitch_data_0

    .line 422
    :goto_0
    :pswitch_0
    return v0

    .line 400
    :pswitch_1
    invoke-virtual {v3}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    goto :goto_0

    .line 403
    :pswitch_2
    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    goto :goto_0

    .line 406
    :pswitch_3
    invoke-virtual {v3}, Landroid/webkit/WebView;->getLeft()I

    move-result v0

    goto :goto_0

    .line 409
    :pswitch_4
    invoke-virtual {v3}, Landroid/webkit/WebView;->getTop()I

    move-result v0

    goto :goto_0

    .line 415
    :pswitch_5
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 416
    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public s3eWebViewHide(I)I
    .locals 3

    .prologue
    .line 365
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v0

    .line 366
    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    .line 368
    :cond_0
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v1

    new-instance v2, Ls3eWebView$5;

    invoke-direct {v2, p0, v0}, Ls3eWebView$5;-><init>(Ls3eWebView;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s3eWebViewIsVisible(I)Z
    .locals 1

    .prologue
    .line 528
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v0

    .line 529
    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x0

    .line 531
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method public s3eWebViewNavigate(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 497
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v0

    .line 498
    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    .line 500
    :cond_0
    const-string v1, "rom://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 510
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Navigating to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Ls3eWebView;->m_UAString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls3eWebView;->m_UAString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Ls3eWebView;->m_UAString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 516
    :cond_2
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v1

    new-instance v2, Ls3eWebView$7;

    invoke-direct {v2, p0, v0, p2}, Ls3eWebView$7;-><init>(Ls3eWebView;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 524
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    :cond_3
    const-string v1, "ram://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public s3eWebViewRelease(I)I
    .locals 4

    .prologue
    .line 467
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v0

    .line 468
    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x1

    .line 475
    :goto_0
    return v0

    .line 470
    :cond_0
    invoke-virtual {p0, p1}, Ls3eWebView;->s3eWebViewHide(I)I

    .line 471
    iget-object v1, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Ls3eWebView;->m_Handles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    monitor-exit v1

    .line 475
    const/4 v0, 0x0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s3eWebViewResize(IIIII)I
    .locals 9

    .prologue
    .line 308
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 309
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v8

    new-instance v0, Ls3eWebView$3;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Ls3eWebView$3;-><init>(Ls3eWebView;[IIIIII)V

    invoke-virtual {v8, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 316
    const/4 v0, 0x0

    aget v0, v2, v0

    return v0
.end method

.method public s3eWebViewResize_real(IIIII)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v1

    .line 290
    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 297
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 298
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 299
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 300
    iput p5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 301
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s3eWebViewSendJavaScript(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 382
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s3eWebViewSendJavaScript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 384
    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    .line 388
    :cond_0
    iget-object v1, p0, Ls3eWebView;->m_InputHack:Ls3eWebView$InputHack;

    invoke-virtual {v1}, Ls3eWebView$InputHack;->DisableInputHandler()V

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Ls3eWebView;->m_InputHack:Ls3eWebView$InputHack;

    invoke-virtual {v0}, Ls3eWebView$InputHack;->EnableInputHandler()V

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s3eWebViewSetHandleProperty(III)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 426
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v1

    .line 428
    packed-switch p2, :pswitch_data_0

    .line 444
    :goto_0
    :pswitch_0
    return v0

    .line 434
    :pswitch_1
    if-nez p3, :cond_0

    .line 435
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 438
    :goto_1
    const/16 v0, 0xc

    .line 439
    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_1

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public s3eWebViewShow(IIIII)I
    .locals 9

    .prologue
    .line 353
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 354
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->LoaderThread()Lcom/ideaworks3d/marmalade/LoaderThread;

    move-result-object v8

    new-instance v0, Ls3eWebView$4;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Ls3eWebView$4;-><init>(Ls3eWebView;[IIIIII)V

    invoke-virtual {v8, v0}, Lcom/ideaworks3d/marmalade/LoaderThread;->runOnOSThread(Ljava/lang/Runnable;)V

    .line 361
    const/4 v0, 0x0

    aget v0, v2, v0

    return v0
.end method

.method public s3eWebViewShow_real(IIIII)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 320
    invoke-direct {p0, p1}, Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;

    move-result-object v1

    .line 321
    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    .line 331
    iget-object v0, p0, Ls3eWebView;->m_Container:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 333
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ls3eWebView;->m_Container:Landroid/widget/RelativeLayout;

    .line 334
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    iget-object v2, p0, Ls3eWebView;->m_Container:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/ideaworks3d/marmalade/LoaderActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 339
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 340
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 341
    iget-object v2, p0, Ls3eWebView;->m_Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_3
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
