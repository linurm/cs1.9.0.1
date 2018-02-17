.class Lzj/zfenlly/gua/FloatWinService$11;
.super Ljava/lang/Object;
.source "FloatWinService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj/zfenlly/gua/FloatWinService;->addExpandView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzj/zfenlly/gua/FloatWinService;


# direct methods
.method constructor <init>(Lzj/zfenlly/gua/FloatWinService;)V
    .locals 0
    .param p1, "this$0"    # Lzj/zfenlly/gua/FloatWinService;

    .prologue
    .line 473
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 476
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$700(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v0, v2}, Lzj/zfenlly/gua/FloatWinService;->access$702(Lzj/zfenlly/gua/FloatWinService;Z)Z

    .line 478
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 479
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$800(Lzj/zfenlly/gua/FloatWinService;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$11;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lzj/zfenlly/gua/FloatWinService;->access$1300(Lzj/zfenlly/gua/FloatWinService;I)V

    .line 482
    return-void
.end method
