.class Lzj/zfenlly/gua/FloatWinService$6;
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
    .line 387
    iput-object p1, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-virtual {v0}, Lzj/zfenlly/gua/FloatWinService;->setRefresh()V

    .line 391
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$200(Lzj/zfenlly/gua/FloatWinService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$300(Lzj/zfenlly/gua/FloatWinService;)V

    .line 396
    :goto_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    const-string/jumbo v1, "refresh"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/gua/FloatWinService$6;->this$0:Lzj/zfenlly/gua/FloatWinService;

    invoke-static {v0}, Lzj/zfenlly/gua/FloatWinService;->access$1000(Lzj/zfenlly/gua/FloatWinService;)V

    goto :goto_0
.end method
