.class public abstract Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;
.super Lcom/ideaworks3d/marmalade/LoaderActivitySlave;
.source "BaseGameActivity.java"

# interfaces
.implements Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;


# static fields
.field public static final CLIENT_ALL:I = 0xb

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseGameActivity"


# instance fields
.field protected mDebugLog:Z

.field protected mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

.field protected mRequestedClients:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mRequestedClients:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mDebugLog:Z

    .line 74
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mRequestedClients:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mDebugLog:Z

    .line 82
    invoke-virtual {p0, p1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->setRequestedClients(I)V

    .line 83
    return-void
.end method


# virtual methods
.method protected beginUserInitiatedSignIn()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "BasicGameActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginUserInitiatedSignIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->beginUserInitiatedSignIn()V

    .line 145
    return-void
.end method

.method protected enableDebugLog(Z)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mDebugLog:Z

    .line 161
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->enableDebugLog(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method protected enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    const-string v0, "BaseGameActivity"

    const-string v1, "BaseGameActivity.enabledDebugLog(bool,String) is deprecated. Use enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, p1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->enableDebugLog(Z)V

    .line 171
    return-void
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getGameHelper()Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mRequestedClients:I

    invoke-direct {v0, v1, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    .line 101
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->enableDebugLog(Z)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignInError()Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->getSignInError()Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 108
    const-string v0, "BasicGameActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onCreate(Landroid/os/Bundle;)V

    .line 110
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->getGameHelper()Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->setup(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;)V

    .line 114
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onStart()V

    .line 119
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivitySlave;->onStop()V

    .line 125
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->onStop()V

    .line 126
    return-void
.end method

.method protected reconnectClient()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->reconnectClient()V

    .line 179
    return-void
.end method

.method protected setRequestedClients(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mRequestedClients:I

    .line 96
    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0, p1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 153
    return-void
.end method

.method protected showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0, p1, p2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 157
    return-void
.end method

.method protected signOut()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->signOut()V

    .line 149
    return-void
.end method
