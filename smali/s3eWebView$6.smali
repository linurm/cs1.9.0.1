.class Ls3eWebView$6;
.super Ljava/lang/Object;
.source "s3eWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3eWebView;->s3eWebViewClearCache(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ls3eWebView;

.field final synthetic val$handle:I

.field final synthetic val$returnValue:[I


# direct methods
.method constructor <init>(Ls3eWebView;I[I)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Ls3eWebView$6;->this$0:Ls3eWebView;

    iput p2, p0, Ls3eWebView$6;->val$handle:I

    iput-object p3, p0, Ls3eWebView$6;->val$returnValue:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Ls3eWebView$6;->this$0:Ls3eWebView;

    iget v1, p0, Ls3eWebView$6;->val$handle:I

    # invokes: Ls3eWebView;->findWebView(I)Landroid/webkit/WebView;
    invoke-static {v0, v1}, Ls3eWebView;->access$700(Ls3eWebView;I)Landroid/webkit/WebView;

    move-result-object v0

    .line 454
    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Ls3eWebView$6;->val$returnValue:[I

    aput v3, v0, v2

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 460
    iget-object v0, p0, Ls3eWebView$6;->val$returnValue:[I

    aput v2, v0, v2

    goto :goto_0
.end method
