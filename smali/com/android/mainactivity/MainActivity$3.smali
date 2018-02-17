.class Lcom/android/mainactivity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mainactivity/MainActivity;->startGetAdvertisingID()V
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
    .line 315
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    .line 319
    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/mainactivity/MainActivity;->advertisingID:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/mainactivity/MainActivity;->access$802(Lcom/android/mainactivity/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/mainactivity/MainActivity;->isLimitAdTrackingEnabled:I
    invoke-static {v2, v0}, Lcom/android/mainactivity/MainActivity;->access$902(Lcom/android/mainactivity/MainActivity;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    # setter for: Lcom/android/mainactivity/MainActivity;->getAdvertisingIdDone:Z
    invoke-static {v0, v1}, Lcom/android/mainactivity/MainActivity;->access$1002(Lcom/android/mainactivity/MainActivity;Z)Z

    .line 335
    :goto_1
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    :try_start_1
    const-string v2, "marmalade11"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[***PLog5***][S8] IllegalStateException exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    # setter for: Lcom/android/mainactivity/MainActivity;->getAdvertisingIdDone:Z
    invoke-static {v0, v1}, Lcom/android/mainactivity/MainActivity;->access$1002(Lcom/android/mainactivity/MainActivity;Z)Z

    goto :goto_1

    .line 326
    :catch_1
    move-exception v0

    .line 327
    :try_start_2
    const-string v2, "marmalade12"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[***PLog6***][S8] GooglePlayServicesRepairableException exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    # setter for: Lcom/android/mainactivity/MainActivity;->getAdvertisingIdDone:Z
    invoke-static {v0, v1}, Lcom/android/mainactivity/MainActivity;->access$1002(Lcom/android/mainactivity/MainActivity;Z)Z

    goto :goto_1

    .line 328
    :catch_2
    move-exception v0

    .line 329
    :try_start_3
    const-string v2, "marmalade13"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[***PLog7***][S8] IOException exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    # setter for: Lcom/android/mainactivity/MainActivity;->getAdvertisingIdDone:Z
    invoke-static {v0, v1}, Lcom/android/mainactivity/MainActivity;->access$1002(Lcom/android/mainactivity/MainActivity;Z)Z

    goto :goto_1

    .line 330
    :catch_3
    move-exception v0

    .line 331
    :try_start_4
    const-string v2, "marmalade14"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[***PLog8***][S8] GooglePlayServicesNotAvailableException exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 333
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    # setter for: Lcom/android/mainactivity/MainActivity;->getAdvertisingIdDone:Z
    invoke-static {v0, v1}, Lcom/android/mainactivity/MainActivity;->access$1002(Lcom/android/mainactivity/MainActivity;Z)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/mainactivity/MainActivity$3;->this$0:Lcom/android/mainactivity/MainActivity;

    # setter for: Lcom/android/mainactivity/MainActivity;->getAdvertisingIdDone:Z
    invoke-static {v2, v1}, Lcom/android/mainactivity/MainActivity;->access$1002(Lcom/android/mainactivity/MainActivity;Z)Z

    throw v0
.end method
