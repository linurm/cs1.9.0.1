.class final Lcom/google/android/gms/wearable/WearableListenerService$zza;
.super Lcom/google/android/gms/wearable/internal/zzaw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/WearableListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field private volatile zzakz:I

.field final synthetic zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzaw$zza;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzakz:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/WearableListenerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;)V

    return-void
.end method

.method private zzIx()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzakz:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzf(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzakz:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;

    instance-of v0, v0, Lcom/google/android/gms/wearable/zzj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "WearableLS"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WearableLS"

    const-string v3, "%s: %s %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    iget-object v5, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v5}, Lcom/google/android/gms/wearable/WearableListenerService;->zza(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzIx()V

    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v2}, Lcom/google/android/gms/wearable/WearableListenerService;->zzb(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v3}, Lcom/google/android/gms/wearable/WearableListenerService;->zzc(Lcom/google/android/gms/wearable/WearableListenerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->zzd(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onConnectedNodes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/NodeParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "connectedNodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/internal/NodeParcelable;>;"
    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$5;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Ljava/util/List;)V

    const-string v1, "onConnectedNodes"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$8;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;)V

    const-string v1, "onEntityUpdate"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$7;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;)V

    const-string v1, "onNotificationReceived"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zza(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$6;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/CapabilityInfoParcelable;)V

    const-string v1, "onConnectedCapabilityChanged"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$9;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/ChannelEventParcelable;)V

    const-string v1, "onChannelEvent"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$2;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V

    const-string v1, "onMessageReceived"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$3;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/NodeParcelable;)V

    const-string v1, "onPeerConnected"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public zzag(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$1;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    const-string v1, "onDataItemChanged"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$zza$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza$4;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/NodeParcelable;)V

    const-string v1, "onPeerDisconnected"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzb(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
