.class Lcom/android/mainactivity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mainactivity/MainActivity;->registerOnSystemUiVisibilityChangeListener()V
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
    .line 587
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity$5;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 5

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$5;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-virtual {v0}, Lcom/android/mainactivity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$5;->this$0:Lcom/android/mainactivity/MainActivity;

    # invokes: Lcom/android/mainactivity/MainActivity;->requiredSystemUiVisibility()I
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$1100(Lcom/android/mainactivity/MainActivity;)I

    move-result v1

    .line 591
    const-string v2, "marmalade15"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiOptions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";requiredUiOptions = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$5;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-virtual {v0}, Lcom/android/mainactivity/MainActivity;->setImmersiveFullscreenMode()V

    .line 595
    :cond_0
    return-void
.end method
