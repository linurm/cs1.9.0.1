.class Ls3eWebView$3;
.super Ljava/lang/Object;
.source "s3eWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3eWebView;->s3eWebViewResize(IIIII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ls3eWebView;

.field final synthetic val$h:I

.field final synthetic val$handle:I

.field final synthetic val$returnValue:[I

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Ls3eWebView;[IIIIII)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Ls3eWebView$3;->this$0:Ls3eWebView;

    iput-object p2, p0, Ls3eWebView$3;->val$returnValue:[I

    iput p3, p0, Ls3eWebView$3;->val$handle:I

    iput p4, p0, Ls3eWebView$3;->val$x:I

    iput p5, p0, Ls3eWebView$3;->val$y:I

    iput p6, p0, Ls3eWebView$3;->val$w:I

    iput p7, p0, Ls3eWebView$3;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 313
    iget-object v6, p0, Ls3eWebView$3;->val$returnValue:[I

    const/4 v7, 0x0

    iget-object v0, p0, Ls3eWebView$3;->this$0:Ls3eWebView;

    iget v1, p0, Ls3eWebView$3;->val$handle:I

    iget v2, p0, Ls3eWebView$3;->val$x:I

    iget v3, p0, Ls3eWebView$3;->val$y:I

    iget v4, p0, Ls3eWebView$3;->val$w:I

    iget v5, p0, Ls3eWebView$3;->val$h:I

    invoke-virtual/range {v0 .. v5}, Ls3eWebView;->s3eWebViewResize_real(IIIII)I

    move-result v0

    aput v0, v6, v7

    .line 314
    return-void
.end method
