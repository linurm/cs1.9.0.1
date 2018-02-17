.class Lcom/android/mainactivity/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mainactivity/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic this$1:Lcom/android/mainactivity/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/android/mainactivity/MainActivity$1;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity$1$1;->this$1:Lcom/android/mainactivity/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->index:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->this$1:Lcom/android/mainactivity/MainActivity$1;

    iget-object v0, v0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$400(Lcom/android/mainactivity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1$1;->this$1:Lcom/android/mainactivity/MainActivity$1;

    iget-object v1, v1, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    iget-object v1, v1, Lcom/android/mainactivity/MainActivity;->loadingMessages:[Ljava/lang/String;

    iget v2, p0, Lcom/android/mainactivity/MainActivity$1$1;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->index:I

    .line 194
    iget v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->index:I

    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1$1;->this$1:Lcom/android/mainactivity/MainActivity$1;

    iget-object v1, v1, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    iget-object v1, v1, Lcom/android/mainactivity/MainActivity;->loadingMessages:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->this$1:Lcom/android/mainactivity/MainActivity$1;

    iget-object v0, v0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    iget-boolean v0, v0, Lcom/android/mainactivity/MainActivity;->loopLoadingText:Z

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->index:I

    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1$1;->this$1:Lcom/android/mainactivity/MainActivity$1;

    iget-object v1, v1, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    iget-object v1, v1, Lcom/android/mainactivity/MainActivity;->loadingMessages:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->index:I

    .line 196
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1$1;->this$1:Lcom/android/mainactivity/MainActivity$1;

    iget-object v0, v0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$500(Lcom/android/mainactivity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    :cond_1
    return-void
.end method
