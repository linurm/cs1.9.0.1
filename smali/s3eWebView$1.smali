.class Ls3eWebView$1;
.super Ls3eWebView$s3eWebChromeClient;
.source "s3eWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3eWebView;->s3eWebViewCreate_real(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ls3eWebView;

.field final synthetic val$dbQuota:I


# direct methods
.method constructor <init>(Ls3eWebView;II)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Ls3eWebView$1;->this$0:Ls3eWebView;

    iput p3, p0, Ls3eWebView$1;->val$dbQuota:I

    invoke-direct {p0, p1, p2}, Ls3eWebView$s3eWebChromeClient;-><init>(Ls3eWebView;I)V

    return-void
.end method


# virtual methods
.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Ls3eWebView$1;->val$dbQuota:I

    int-to-long v0, v0

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 254
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 248
    return-void
.end method
