.class Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 8214
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "x1"    # Landroid/support/v7/widget/RecyclerView$1;

    .prologue
    .line 8214
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8226
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8227
    # invokes: Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$5400(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8230
    :cond_0
    return-void
.end method

.method public onChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 8242
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8270
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 8271
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8272
    const/16 v0, -0x41

    # getter for: Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$5500(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 8276
    :cond_0
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8277
    # invokes: Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$5400(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8278
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8280
    :cond_1
    return-void
.end method

.method public onMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8234
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8235
    # invokes: Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$5400(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8236
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8238
    :cond_0
    return-void
.end method

.method public onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8218
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8219
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$5300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8220
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8222
    :cond_0
    return-void
.end method
