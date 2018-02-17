.class LExtS8AndroidHelper$1;
.super Ljava/lang/Object;
.source "ExtS8AndroidHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LExtS8AndroidHelper;->showAlertView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LExtS8AndroidHelper;

.field final synthetic val$jsonDialogInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(LExtS8AndroidHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, LExtS8AndroidHelper$1;->this$0:LExtS8AndroidHelper;

    iput-object p2, p0, LExtS8AndroidHelper$1;->val$jsonDialogInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, LExtS8AndroidHelper$1;->this$0:LExtS8AndroidHelper;

    iget-object v1, p0, LExtS8AndroidHelper$1;->val$jsonDialogInfo:Ljava/lang/String;

    # invokes: LExtS8AndroidHelper;->showAlertViewOnUiThread(Ljava/lang/String;)V
    invoke-static {v0, v1}, LExtS8AndroidHelper;->access$000(LExtS8AndroidHelper;Ljava/lang/String;)V

    .line 55
    return-void
.end method
