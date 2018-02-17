.class Ls3ePermissions$PendingRequest;
.super Ljava/lang/Object;
.source "s3ePermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3ePermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingRequest"
.end annotation


# instance fields
.field public permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestId:I

.field private skipGranted:Z

.field public skippedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ls3ePermissions$PermissionRequestResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ls3ePermissions;


# direct methods
.method public constructor <init>(Ls3ePermissions;IZ[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    iput-object p1, p0, Ls3ePermissions$PendingRequest;->this$0:Ls3ePermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p2, p0, Ls3ePermissions$PendingRequest;->requestId:I

    .line 46
    iput-boolean p3, p0, Ls3ePermissions$PendingRequest;->skipGranted:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public getResGrantResults([I)[I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 87
    new-array p1, v2, [I

    .line 97
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    new-array v1, v0, [I

    move v0, v2

    .line 99
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 101
    aget v3, p1, v0

    aput v3, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array p1, v0, [I

    move v1, v2

    .line 92
    :goto_1
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 94
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Ls3ePermissions;->getPermissionGrantedValue(Ljava/lang/String;)I
    invoke-static {v0}, Ls3ePermissions;->access$000(Ljava/lang/String;)I

    move-result v0

    aput v0, p1, v1

    .line 92
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 103
    :cond_2
    :goto_2
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 105
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PermissionRequestResult;

    invoke-virtual {v0}, Ls3ePermissions$PermissionRequestResult;->isSet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    const-string v3, "s3ePermissions"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: permission "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PermissionRequestResult;

    iget-object v0, v0, Ls3ePermissions$PermissionRequestResult;->permission:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is expected to be set as part of another request."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_3
    array-length v0, p1

    add-int v3, v0, v2

    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PermissionRequestResult;

    invoke-virtual {v0}, Ls3ePermissions$PermissionRequestResult;->isSet()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PermissionRequestResult;

    iget v0, v0, Ls3ePermissions$PermissionRequestResult;->result:I

    :goto_3
    aput v0, v1, v3

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 109
    :cond_4
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PermissionRequestResult;

    iget-object v0, v0, Ls3ePermissions$PermissionRequestResult;->permission:Ljava/lang/String;

    # invokes: Ls3ePermissions;->getPermissionGrantedValue(Ljava/lang/String;)I
    invoke-static {v0}, Ls3ePermissions;->access$000(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 111
    :cond_5
    return-object v1
.end method

.method public getResPermissions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_1

    .line 65
    new-array v0, v1, [Ljava/lang/String;

    move-object p1, v0

    .line 71
    :cond_0
    :goto_0
    array-length v0, p1

    iget-object v2, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 72
    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 73
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 75
    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    iget-object v2, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    .line 77
    :cond_2
    :goto_2
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 79
    array-length v0, p1

    add-int v3, v0, v1

    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PermissionRequestResult;

    iget-object v0, v0, Ls3ePermissions$PermissionRequestResult;->permission:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 81
    :cond_3
    return-object v2
.end method

.method public request()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 115
    const-string v0, "s3ePermissions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing permissions request with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ls3ePermissions$PendingRequest;->requestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 118
    iget-boolean v0, p0, Ls3ePermissions$PendingRequest;->skipGranted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Ls3ePermissions;->getPermissionGrantedValue(Ljava/lang/String;)I
    invoke-static {v0}, Ls3ePermissions;->access$000(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v3, "s3ePermissions"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping permission check (already granted): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    new-instance v4, Ls3ePermissions$PermissionRequestResult;

    iget-object v5, p0, Ls3ePermissions$PendingRequest;->this$0:Ls3ePermissions;

    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0, v1}, Ls3ePermissions$PermissionRequestResult;-><init>(Ls3ePermissions;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget v0, p0, Ls3ePermissions$PendingRequest;->requestId:I

    invoke-virtual {p0, v6}, Ls3ePermissions$PendingRequest;->getResPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6}, Ls3ePermissions$PendingRequest;->getResGrantResults([I)[I

    move-result-object v3

    # invokes: Ls3ePermissions;->notifyRequestPermissionsResult(I[Ljava/lang/String;[I)V
    invoke-static {v0, v2, v3}, Ls3ePermissions;->access$100(I[Ljava/lang/String;[I)V

    move v0, v1

    .line 141
    :goto_1
    return v0

    .line 131
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 133
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    iget-object v2, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v2, p0, Ls3ePermissions$PendingRequest;->requestId:I

    invoke-virtual {v1, v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 139
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 137
    :cond_3
    const-string v0, "s3ePermissions"

    const-string v1, "Warning: Attempt to request permissions on API level < 23"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updatePermission(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 54
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->permissions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Ls3ePermissions$PendingRequest;->skippedPermissions:Ljava/util/List;

    new-instance v2, Ls3ePermissions$PermissionRequestResult;

    iget-object v3, p0, Ls3ePermissions$PendingRequest;->this$0:Ls3ePermissions;

    invoke-direct {v2, v3, p1, p2}, Ls3ePermissions$PermissionRequestResult;-><init>(Ls3ePermissions;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method
