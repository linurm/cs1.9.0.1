.class Ls3ePermissions;
.super Ljava/lang/Object;
.source "s3ePermissions.java"

# interfaces
.implements Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3ePermissions$PendingRequestsQueue;,
        Ls3ePermissions$PendingRequest;,
        Ls3ePermissions$PermissionRequestResult;
    }
.end annotation


# static fields
.field private static final S3E_PERMISSIONS_ERR_NO_PERMISSIONS_TO_REQUEST:I = 0x1

.field private static final S3E_PERMISSION_DENIED:I = 0x1

.field private static final S3E_PERMISSION_GRANTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "s3ePermissions"


# instance fields
.field private pendingRequests:Ls3ePermissions$PendingRequestsQueue;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ls3ePermissions$PendingRequestsQueue;

    invoke-direct {v0, p0}, Ls3ePermissions$PendingRequestsQueue;-><init>(Ls3ePermissions;)V

    iput-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 11
    invoke-static {p0}, Ls3ePermissions;->getPermissionGrantedValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 11
    invoke-static {p0, p1, p2}, Ls3ePermissions;->notifyRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method private static getPermissionGrantedValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 230
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 237
    :goto_0
    return v0

    .line 234
    :cond_0
    const-string v0, "s3ePermissions"

    const-string v1, "Warning: getPermissionGrantedValue called in compatibility mode (app is not targeting api level 23)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 236
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static native native_RequestPermissionsResultCallback(I[Ljava/lang/String;[I)V
.end method

.method private static notifyRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    array-length v0, p2

    new-array v3, v0, [I

    move v0, v1

    .line 205
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 207
    aget v2, p2, v0

    if-nez v2, :cond_0

    move v2, v1

    :goto_1
    aput v2, v3, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 209
    :cond_1
    invoke-static {p0, p1, v3}, Ls3ePermissions;->native_RequestPermissionsResultCallback(I[Ljava/lang/String;[I)V

    .line 210
    return-void
.end method

.method private removePendingRequestWithId(I)Ls3ePermissions$PendingRequest;
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    invoke-virtual {v0}, Ls3ePermissions$PendingRequestsQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PendingRequest;

    .line 280
    iget v2, v0, Ls3ePermissions$PendingRequest;->requestId:I

    if-ne v2, p1, :cond_0

    .line 282
    iget-object v1, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    invoke-virtual {v1, v0}, Ls3ePermissions$PendingRequestsQueue;->remove(Ljava/lang/Object;)Z

    .line 286
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePendingRequests(Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;)V
    .locals 4

    .prologue
    .line 290
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_permissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    iget-object v2, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_permissions:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_grantResults:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ls3ePermissions$PendingRequestsQueue;->updatePermission(Ljava/lang/String;I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized onRequestPermissionsResultEvent(Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 297
    monitor-enter p0

    :try_start_0
    const-string v1, "s3ePermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling permissions request result, request code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_requestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    iget-object v1, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_permissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 300
    const-string v1, "s3ePermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_permissions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " grantResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_grantResults:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    iget v0, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_requestCode:I

    invoke-direct {p0, v0}, Ls3ePermissions;->removePendingRequestWithId(I)Ls3ePermissions$PendingRequest;

    move-result-object v0

    .line 303
    invoke-direct {p0, p1}, Ls3ePermissions;->updatePendingRequests(Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;)V

    .line 304
    if-nez v0, :cond_1

    .line 306
    const-string v1, "s3ePermissions"

    const-string v2, "onRequestPermissionsResultEvent - not found pending request data!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v1, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_requestCode:I

    iget-object v2, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_permissions:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_grantResults:[I

    invoke-static {v1, v2, v3}, Ls3ePermissions;->notifyRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 309
    :cond_1
    iget v1, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_requestCode:I

    iget-object v2, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_permissions:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ls3ePermissions$PendingRequest;->getResPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultEvent;->m_grantResults:[I

    invoke-virtual {v0, v3}, Ls3ePermissions$PendingRequest;->getResGrantResults([I)[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Ls3ePermissions;->notifyRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 310
    :goto_1
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    invoke-virtual {v0}, Ls3ePermissions$PendingRequestsQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 312
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls3ePermissions$PendingRequestsQueue;->get(I)Ls3ePermissions$PendingRequest;

    move-result-object v0

    invoke-virtual {v0}, Ls3ePermissions$PendingRequest;->request()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    :cond_2
    monitor-exit p0

    return-void

    .line 318
    :cond_3
    :try_start_1
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls3ePermissions$PendingRequestsQueue;->remove(I)Ls3ePermissions$PendingRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s3ePermissionsInit()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "s3ePermissions"

    const-string v1, "s3ePermissionsInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->addRequestPermissionsResultListener(Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultListener;)V

    .line 215
    return-void
.end method

.method public s3ePermissionsIsGranted(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 223
    const-string v0, "s3ePermissions"

    const-string v1, "s3ePermissionsIsGranted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p1}, Ls3ePermissions;->getPermissionGrantedValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized s3ePermissionsNotifyPermissionsResultCleanup()V
    .locals 1

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    invoke-virtual {v0}, Ls3ePermissions$PendingRequestsQueue;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s3ePermissionsRequest([Ljava/lang/String;IZ)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    monitor-enter p0

    :try_start_0
    const-string v0, "s3ePermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s3ePermissionsRequest requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    array-length v0, p1

    if-nez v0, :cond_0

    .line 245
    const-string v0, "s3ePermissions"

    const-string v2, "s3ePermissionsRequest - empty permissions request list"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 274
    :goto_0
    monitor-exit p0

    return v0

    .line 248
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_2

    .line 250
    const-string v0, "s3ePermissions"

    const-string v1, "Warning: s3ePermissionsRequest called in compatibility mode (app is not targeting api level 23)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    array-length v0, p1

    new-array v1, v0, [I

    move v0, v2

    .line 252
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 254
    aget-object v3, p1, v0

    invoke-static {v3}, Ls3ePermissions;->getPermissionGrantedValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_1
    invoke-static {p2, p1, v1}, Ls3ePermissions;->notifyRequestPermissionsResult(I[Ljava/lang/String;[I)V

    move v0, v2

    .line 257
    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    invoke-virtual {v0}, Ls3ePermissions$PendingRequestsQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PendingRequest;

    .line 261
    iget v0, v0, Ls3ePermissions$PendingRequest;->requestId:I

    if-ne v0, p2, :cond_3

    .line 263
    const-string v0, "s3ePermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s3ePermissionsRequest - there is ongoing request with same id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 266
    :cond_4
    :try_start_2
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    new-instance v3, Ls3ePermissions$PendingRequest;

    invoke-direct {v3, p0, p2, p3, p1}, Ls3ePermissions$PendingRequest;-><init>(Ls3ePermissions;IZ[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ls3ePermissions$PendingRequestsQueue;->add(Ls3ePermissions$PendingRequest;)Z

    .line 267
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    invoke-virtual {v0}, Ls3ePermissions$PendingRequestsQueue;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 269
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls3ePermissions$PendingRequestsQueue;->get(I)Ls3ePermissions$PendingRequest;

    move-result-object v0

    invoke-virtual {v0}, Ls3ePermissions$PendingRequest;->request()Z

    move-result v0

    if-nez v0, :cond_5

    .line 271
    iget-object v0, p0, Ls3ePermissions;->pendingRequests:Ls3ePermissions$PendingRequestsQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls3ePermissions$PendingRequestsQueue;->remove(I)Ls3ePermissions$PendingRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move v0, v2

    .line 274
    goto :goto_0
.end method

.method public s3ePermissionsShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 326
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s3ePermissionsTerminate()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "s3ePermissions"

    const-string v1, "s3ePermissionsTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->removeRequestPermissionsResultListener(Lcom/ideaworks3d/marmalade/event/RequestPermissionsResultListener;)Z

    .line 220
    return-void
.end method
