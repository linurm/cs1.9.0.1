.class Ls3eWebView$5;
.super Ljava/lang/Object;
.source "s3eWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3eWebView;->s3eWebViewHide(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ls3eWebView;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Ls3eWebView;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Ls3eWebView$5;->this$0:Ls3eWebView;

    iput-object p2, p0, Ls3eWebView$5;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "removing WebView"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Ls3eWebView$5;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Ls3eWebView$5;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 376
    :cond_0
    return-void
.end method
