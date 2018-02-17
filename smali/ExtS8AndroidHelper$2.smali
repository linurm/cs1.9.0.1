.class LExtS8AndroidHelper$2;
.super Ljava/lang/Object;
.source "ExtS8AndroidHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LExtS8AndroidHelper;->showAlertViewOnUiThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LExtS8AndroidHelper;


# direct methods
.method constructor <init>(LExtS8AndroidHelper;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, LExtS8AndroidHelper$2;->this$0:LExtS8AndroidHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, LExtS8AndroidHelper$2;->this$0:LExtS8AndroidHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, LExtS8AndroidHelper;->showAlertViewCallback(I)V

    .line 81
    return-void
.end method
