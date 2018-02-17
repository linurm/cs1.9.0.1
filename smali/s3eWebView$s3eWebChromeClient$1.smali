.class Ls3eWebView$s3eWebChromeClient$1;
.super Ljava/lang/Object;
.source "s3eWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3eWebView$s3eWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ls3eWebView$s3eWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Ls3eWebView$s3eWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Ls3eWebView$s3eWebChromeClient$1;->this$1:Ls3eWebView$s3eWebChromeClient;

    iput-object p2, p0, Ls3eWebView$s3eWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ls3eWebView$s3eWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 77
    return-void
.end method
