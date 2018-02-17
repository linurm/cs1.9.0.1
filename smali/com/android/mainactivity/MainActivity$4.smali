.class Lcom/android/mainactivity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mainactivity/MainActivity;->quitGame()V
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
    .line 502
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity$4;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$4;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-virtual {v0}, Lcom/android/mainactivity/MainActivity;->finish()V

    .line 505
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 506
    return-void
.end method
