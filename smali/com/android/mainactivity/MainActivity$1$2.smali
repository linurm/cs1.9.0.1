.class Lcom/android/mainactivity/MainActivity$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mainactivity/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mainactivity/MainActivity$1;

.field final synthetic val$activity:Lcom/android/mainactivity/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mainactivity/MainActivity$1;Lcom/android/mainactivity/MainActivity;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity$1$2;->this$1:Lcom/android/mainactivity/MainActivity$1;

    iput-object p2, p0, Lcom/android/mainactivity/MainActivity$1$2;->val$activity:Lcom/android/mainactivity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1$2;->val$activity:Lcom/android/mainactivity/MainActivity;

    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1$2;->val$activity:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->profilerOn:Z
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$600(Lcom/android/mainactivity/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/mainactivity/MainActivity;->profilerOn:Z
    invoke-static {v1, v0}, Lcom/android/mainactivity/MainActivity;->access$602(Lcom/android/mainactivity/MainActivity;Z)Z

    .line 221
    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1$2;->val$activity:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->profilerOn:Z
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$600(Lcom/android/mainactivity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "stop Profiler"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :cond_1
    const-string v0, "start Profiler"

    goto :goto_1
.end method
