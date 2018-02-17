.class Lcom/android/mainactivity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mainactivity/MainActivity;->setImmersiveFullscreenMode()V
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
    .line 644
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity$6;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$6;->this$0:Lcom/android/mainactivity/MainActivity;

    # invokes: Lcom/android/mainactivity/MainActivity;->doSetImmersiveFullscreenMode()V
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$1200(Lcom/android/mainactivity/MainActivity;)V

    .line 647
    return-void
.end method
