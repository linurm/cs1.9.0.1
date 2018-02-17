.class Ls3ePermissions$PendingRequestsQueue;
.super Ljava/lang/Object;
.source "s3ePermissions.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3ePermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingRequestsQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ls3ePermissions$PendingRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private pendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ls3ePermissions$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private sessionRequestResults:Ljava/util/List;
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
.method constructor <init>(Ls3ePermissions;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Ls3ePermissions$PendingRequestsQueue;->this$0:Ls3ePermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->sessionRequestResults:Ljava/util/List;

    .line 150
    return-void
.end method


# virtual methods
.method add(Ls3ePermissions$PendingRequest;)Z
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->sessionRequestResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PermissionRequestResult;

    .line 160
    iget-object v2, v0, Ls3ePermissions$PermissionRequestResult;->permission:Ljava/lang/String;

    iget v0, v0, Ls3ePermissions$PermissionRequestResult;->result:I

    invoke-virtual {p1, v2, v0}, Ls3ePermissions$PendingRequest;->updatePermission(Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->sessionRequestResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    :cond_0
    return-void
.end method

.method get(I)Ls3ePermissions$PendingRequest;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PendingRequest;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ls3ePermissions$PendingRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method remove(I)Ls3ePermissions$PendingRequest;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PendingRequest;

    return-object v0
.end method

.method remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method updatePermission(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->pendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3ePermissions$PendingRequest;

    .line 184
    invoke-virtual {v0, p1, p2}, Ls3ePermissions$PendingRequest;->updatePermission(Ljava/lang/String;I)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Ls3ePermissions$PendingRequestsQueue;->sessionRequestResults:Ljava/util/List;

    new-instance v1, Ls3ePermissions$PermissionRequestResult;

    iget-object v2, p0, Ls3ePermissions$PendingRequestsQueue;->this$0:Ls3ePermissions;

    invoke-direct {v1, v2, p1, p2}, Ls3ePermissions$PermissionRequestResult;-><init>(Ls3ePermissions;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method
