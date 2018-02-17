.class public Ls3eWebView$WMJavaScriptInterface;
.super Ljava/lang/Object;
.source "s3eWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3eWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WMJavaScriptInterface"
.end annotation


# instance fields
.field private m_Handle:I

.field final synthetic this$0:Ls3eWebView;


# direct methods
.method public constructor <init>(Ls3eWebView;I)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Ls3eWebView$WMJavaScriptInterface;->this$0:Ls3eWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p2, p0, Ls3eWebView$WMJavaScriptInterface;->m_Handle:I

    .line 101
    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s3e_exec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Ls3eWebView$WMJavaScriptInterface;->this$0:Ls3eWebView;

    iget v1, p0, Ls3eWebView$WMJavaScriptInterface;->m_Handle:I

    # invokes: Ls3eWebView;->s3eWebViewExec(ILjava/lang/String;)V
    invoke-static {v0, v1, p1}, Ls3eWebView;->access$000(Ls3eWebView;ILjava/lang/String;)V

    .line 107
    return-void
.end method
