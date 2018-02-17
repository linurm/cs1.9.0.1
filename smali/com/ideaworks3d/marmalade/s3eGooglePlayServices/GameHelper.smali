.class public Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;,
        Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0xb

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field public static final CLIENT_PLUS:I = 0x2

.field public static final CLIENT_SNAPSHOT:I = 0x8

.field static final DEFAULT_MAX_SIGN_IN_ATTEMPTS:I = 0x3

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field static final RC_UNUSED_ALT:I = 0x1389

.field static final TAG:Ljava/lang/String; = "GameHelper"


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppContext:Landroid/content/Context;

.field private mAppIdValError:Z

.field mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

.field mMaxAutoSignInAttempts:I

.field mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

.field mRequestedClients:I

.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSetupDone:Z

    .line 90
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 93
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppIdValError:Z

    .line 96
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mExpectingResolution:Z

    .line 100
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInCancelled:Z

    .line 107
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    .line 110
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppContext:Landroid/content/Context;

    .line 121
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 124
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 125
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 126
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 129
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 139
    iput v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequestedClients:I

    .line 144
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectOnStart:Z

    .line 152
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mUserInitiatedSignIn:Z

    .line 155
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 158
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mShowErrorDialogs:Z

    .line 164
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mDebugLog:Z

    .line 187
    iput-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

    .line 193
    const/4 v0, 0x3

    iput v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mMaxAutoSignInAttempts:I

    .line 808
    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    .line 809
    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    .line 206
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppContext:Landroid/content/Context;

    .line 207
    iput p2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequestedClients:I

    .line 208
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    .line 240
    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->logError(Ljava/lang/String;)V

    .line 241
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_0
    return-void
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1037
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 1038
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1043
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 2

    .prologue
    .line 996
    if-nez p0, :cond_0

    .line 997
    const-string v0, "GameHelper"

    const-string v1, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :goto_0
    return-void

    .line 1002
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1018
    const/16 v0, 0x232a

    const/4 v1, 0x0

    invoke-static {p2, p0, v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 1020
    if-nez v0, :cond_1

    .line 1022
    const-string v0, "GameHelper"

    const-string v1, "No standard error dialog available. Making fallback dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1026
    invoke-static {p0, v1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1029
    invoke-static {p2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    invoke-static {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 1033
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1004
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 1008
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 1012
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method assertConfigured(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper error: Operation attempted without setup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->logError(Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 686
    const-string v0, "initial check app_id value"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->getAppIdFromResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 688
    const-string v0, "^[0-9]+$"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppIdValError:Z

    .line 689
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppIdValError:Z

    if-eqz v0, :cond_1

    .line 691
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: app_id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be a numeric value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;->onSignInFailed()V

    .line 737
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 688
    goto :goto_0

    .line 696
    :cond_1
    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->resetSignInCancellations()V

    .line 698
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInCancelled:Z

    .line 699
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectOnStart:Z

    .line 701
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->logWarn(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0, v1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->notifyListener(Z)V

    goto :goto_1

    .line 707
    :cond_2
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_3

    .line 708
    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :cond_3
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 723
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mUserInitiatedSignIn:Z

    .line 725
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    .line 728
    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 729
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 730
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->resolveConnectionResult()V

    goto :goto_1

    .line 733
    :cond_4
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 734
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 735
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->connect()V

    goto :goto_1
.end method

.method public clearInvitation()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 487
    return-void
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 495
    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 491
    return-void
.end method

.method connect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 749
    :goto_0
    return-void

    .line 744
    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 746
    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 747
    iput-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 748
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    .line 282
    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->logError(Ljava/lang/String;)V

    .line 283
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 289
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    if-eqz v1, :cond_4

    .line 291
    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 294
    :goto_0
    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 297
    :cond_1
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    if-eqz v1, :cond_5

    .line 299
    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 302
    :goto_1
    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 305
    :cond_2
    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 306
    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 307
    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 309
    :cond_3
    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 310
    return-object v0

    .line 293
    :cond_4
    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    goto :goto_0

    .line 301
    :cond_5
    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    goto :goto_1
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1065
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1066
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 944
    :goto_0
    return-void

    .line 941
    :cond_0
    const-string v0, "GameHelper"

    const-string v1, "disconnect() called when client was already disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1

    .prologue
    .line 534
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mDebugLog:Z

    .line 535
    if-eqz p1, :cond_0

    .line 536
    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 538
    :cond_0
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0, p1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->enableDebugLog(Z)V

    .line 545
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GoogleApiClient. Did you call setup()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequests()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 816
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSignInError()Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    const-string v0, "GameHelper"

    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 954
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectOnStart:Z

    .line 955
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->disconnect()V

    .line 956
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    .line 958
    iget v0, p1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 960
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    .line 963
    :cond_0
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->showFailureDialog()V

    .line 964
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 965
    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->notifyListener(Z)V

    .line 966
    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequests()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignInError()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 375
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppIdValError:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTurnBasedMatch()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementSignInCancellations()I
    .locals 4

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 824
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 825
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 826
    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 827
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 828
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInCancelled:Z

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1075
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** GameHelper ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1071
    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! GameHelper WARNING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1050
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->logError(Ljava/lang/String;)V

    .line 1051
    const/4 v0, 0x0

    .line 1053
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1058
    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->logError(Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x0

    .line 1061
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListener(Z)V
    .locals 2

    .prologue
    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying LISTENER of sign-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 664
    if-eqz p1, :cond_3

    .line 665
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;->onSignInSucceeded()V

    .line 670
    :cond_0
    :goto_1
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;->onSignInFailed()V

    goto :goto_1
.end method

.method notifyListenerOfSignOut()V
    .locals 1

    .prologue
    .line 673
    const-string v0, "Notifying LISTENER of sign-out"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;->onSignOut()V

    .line 677
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0x2711

    const/16 v3, 0x2329

    const/4 v4, 0x0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p1, v3, :cond_1

    const-string v0, "RC_RESOLVE"

    .line 586
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 587
    invoke-static {p2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 588
    const-string v1, "GameHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: req="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_2

    const-string v0, "RC_RESOLVE"

    .line 590
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 591
    invoke-static {p2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    if-ne p2, v5, :cond_3

    const/16 v0, 0x232a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1389

    if-ne p1, v0, :cond_3

    .line 597
    :cond_0
    const-string v0, "onActivityResult: external signout?"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    const-string v0, "onActivityResult: signOut detected."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 602
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->notifyListenerOfSignOut()V

    .line 656
    :goto_2
    return-void

    .line 586
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 607
    :cond_3
    if-eq p1, v3, :cond_4

    .line 608
    const-string v0, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_2

    .line 613
    :cond_4
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mExpectingResolution:Z

    .line 615
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    if-nez v0, :cond_5

    .line 616
    const-string v0, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_2

    .line 622
    :cond_5
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 624
    const-string v0, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->connect()V

    goto :goto_2

    .line 626
    :cond_6
    if-ne p2, v5, :cond_7

    .line 627
    const-string v0, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->connect()V

    goto :goto_2

    .line 629
    :cond_7
    if-nez p2, :cond_8

    .line 631
    const-string v0, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInCancelled:Z

    .line 633
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectOnStart:Z

    .line 634
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mUserInitiatedSignIn:Z

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    .line 636
    iput-boolean v4, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 637
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 640
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->getSignInCancellations()I

    move-result v0

    .line 641
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->incrementSignInCancellations()I

    move-result v1

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAR: # of cancellations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0, v4}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->notifyListener(Z)V

    goto/16 :goto_2

    .line 649
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAR: responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 651
    invoke-static {p2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", so giving up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 653
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->giveUp(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;)V

    goto/16 :goto_2
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 768
    const-string v0, "onConnected: connected!"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 770
    if-eqz p1, :cond_2

    .line 771
    const-string v0, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 772
    const-string v0, "invitation"

    .line 773
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 774
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 776
    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 777
    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invitation ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 782
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    .line 783
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequests:Ljava/util/ArrayList;

    .line 784
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected: connection hint has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 790
    :cond_1
    const-string v0, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 791
    const-string v0, "turn_based_match"

    .line 792
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->succeedSignIn()V

    .line 797
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 844
    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 846
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 847
    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 850
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    .line 849
    invoke-static {v3}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 848
    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - resolvable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->getSignInCancellations()I

    move-result v2

    .line 857
    iget-boolean v3, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v3, :cond_0

    .line 858
    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 879
    :goto_0
    if-nez v0, :cond_3

    .line 881
    const-string v0, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 882
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 883
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 884
    invoke-virtual {p0, v1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->notifyListener(Z)V

    .line 894
    :goto_1
    return-void

    .line 860
    :cond_0
    iget-boolean v3, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInCancelled:Z

    if-eqz v3, :cond_1

    .line 861
    const-string v0, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    move v0, v1

    .line 862
    goto :goto_0

    .line 863
    :cond_1
    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v2, v3, :cond_2

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 872
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 888
    :cond_3
    const-string v0, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->resolveConnectionResult()V

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionSuspended, cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->disconnect()V

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    .line 974
    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 975
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 976
    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->notifyListener(Z)V

    .line 977
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 393
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    .line 394
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppContext:Landroid/content/Context;

    .line 396
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 397
    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 399
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectOnStart:Z

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "GameHelper"

    const-string v1, "GameHelper: client was already connected on onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    return-void

    .line 404
    :cond_0
    const-string v0, "Connecting client."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 406
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 409
    :cond_1
    const-string v0, "Not attempting to connect because mConnectOnStart=false"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 410
    const-string v0, "Instead, reporting a sign-in failure."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$1;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$1;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 423
    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->assertConfigured(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 430
    :goto_0
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 431
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mExpectingResolution:Z

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    .line 435
    return-void

    .line 428
    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->connect()V

    .line 763
    :goto_0
    return-void

    .line 760
    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 834
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 835
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 836
    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 837
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 838
    return-void
.end method

.method resolveConnectionResult()V
    .locals 3

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mExpectingResolution:Z

    if-eqz v0, :cond_0

    .line 904
    const-string v0, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 934
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 909
    const-string v0, "No need to resolve issue, activity does not exist anymore"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    const-string v0, "Result has resolution. Starting it."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 920
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mExpectingResolution:Z

    .line 921
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 923
    :catch_0
    move-exception v0

    .line 925
    const-string v0, "SendIntentException, so connecting again."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->connect()V

    goto :goto_0

    .line 931
    :cond_2
    const-string v0, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 932
    new-instance v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->giveUp(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;)V

    goto :goto_0
.end method

.method public setAppStateApiOptions(Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->doApiOptionsPreCheck()V

    .line 260
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mAppStateApiOptions:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 261
    return-void
.end method

.method public setConnectOnStart(Z)V
    .locals 2

    .prologue
    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing mConnectOnStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 1119
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectOnStart:Z

    .line 1120
    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->doApiOptionsPreCheck()V

    .line 251
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 252
    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mMaxAutoSignInAttempts:I

    .line 223
    return-void
.end method

.method public setPlusApiOptions(Lcom/google/android/gms/plus/Plus$PlusOptions;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->doApiOptionsPreCheck()V

    .line 269
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    .line 270
    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mShowErrorDialogs:Z

    .line 389
    return-void
.end method

.method public setup(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;)V
    .locals 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "GameHelper: you cannot call GameHelper.setup() more than once!"

    .line 325
    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->logError(Ljava/lang/String;)V

    .line 326
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_0
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mListener:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$GameHelperListener;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setup: requested clients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequestedClients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSetupDone:Z

    .line 339
    return-void
.end method

.method public showFailureDialog()V
    .locals 3

    .prologue
    .line 980
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v0

    .line 982
    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v1

    .line 984
    iget-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_1

    .line 985
    iget-object v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 549
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->notifyListenerOfSignOut()V

    .line 575
    :goto_0
    return-void

    .line 558
    :cond_0
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 559
    const-string v0, "Clearing default account on PlusClient."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 560
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 565
    :cond_1
    iget v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 566
    const-string v0, "Signing out from the Google API Client."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 571
    :cond_2
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 572
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectOnStart:Z

    .line 573
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 574
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 800
    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->debugLog(Ljava/lang/String;)V

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mSignInFailureReason:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper$SignInFailureReason;

    .line 802
    iput-boolean v2, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnectOnStart:Z

    .line 803
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mUserInitiatedSignIn:Z

    .line 804
    iput-boolean v1, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->mConnecting:Z

    .line 805
    invoke-virtual {p0, v2}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->notifyListener(Z)V

    .line 806
    return-void
.end method
