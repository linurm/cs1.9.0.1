.class Ls3eWebView$2;
.super Ljava/lang/Object;
.source "s3eWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3eWebView;->s3eWebViewCreate(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ls3eWebView;

.field final synthetic val$handle:I

.field final synthetic val$transparentBackground:Z


# direct methods
.method constructor <init>(Ls3eWebView;IZ)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Ls3eWebView$2;->this$0:Ls3eWebView;

    iput p2, p0, Ls3eWebView$2;->val$handle:I

    iput-boolean p3, p0, Ls3eWebView$2;->val$transparentBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Ls3eWebView$2;->this$0:Ls3eWebView;

    iget v1, p0, Ls3eWebView$2;->val$handle:I

    iget-boolean v2, p0, Ls3eWebView$2;->val$transparentBackground:Z

    # invokes: Ls3eWebView;->s3eWebViewCreate_real(IZ)V
    invoke-static {v0, v1, v2}, Ls3eWebView;->access$600(Ls3eWebView;IZ)V

    .line 282
    return-void
.end method
