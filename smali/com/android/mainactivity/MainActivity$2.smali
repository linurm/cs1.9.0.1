.class Lcom/android/mainactivity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mainactivity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mainactivity/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mainactivity/MainActivity;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$100(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$300(Lcom/android/mainactivity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$100(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$100(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$300(Lcom/android/mainactivity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$300(Lcom/android/mainactivity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # setter for: Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;
    invoke-static {v0, v2}, Lcom/android/mainactivity/MainActivity;->access$102(Lcom/android/mainactivity/MainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 246
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # setter for: Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0, v2}, Lcom/android/mainactivity/MainActivity;->access$302(Lcom/android/mainactivity/MainActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 247
    const/4 v0, 0x1

    # setter for: Lcom/android/mainactivity/MainActivity;->splashScreenHidden:Z
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$702(Z)Z

    .line 248
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$500(Lcom/android/mainactivity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$2;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$500(Lcom/android/mainactivity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    :cond_1
    return-void
.end method
