.class Ls3ePermissions$PermissionRequestResult;
.super Ljava/lang/Object;
.source "s3ePermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3ePermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionRequestResult"
.end annotation


# instance fields
.field private isResultSet:Z

.field public permission:Ljava/lang/String;

.field public result:I

.field final synthetic this$0:Ls3ePermissions;


# direct methods
.method public constructor <init>(Ls3ePermissions;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    iput-object p1, p0, Ls3ePermissions$PermissionRequestResult;->this$0:Ls3ePermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls3ePermissions$PermissionRequestResult;->isResultSet:Z

    .line 20
    iput-object p2, p0, Ls3ePermissions$PermissionRequestResult;->permission:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ls3ePermissions;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 23
    iput-object p1, p0, Ls3ePermissions$PermissionRequestResult;->this$0:Ls3ePermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls3ePermissions$PermissionRequestResult;->isResultSet:Z

    .line 24
    iput-object p2, p0, Ls3ePermissions$PermissionRequestResult;->permission:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p3}, Ls3ePermissions$PermissionRequestResult;->setResult(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public isSet()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Ls3ePermissions$PermissionRequestResult;->isResultSet:Z

    return v0
.end method

.method public setResult(I)V
    .locals 1

    .prologue
    .line 29
    iput p1, p0, Ls3ePermissions$PermissionRequestResult;->result:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls3ePermissions$PermissionRequestResult;->isResultSet:Z

    .line 31
    return-void
.end method
