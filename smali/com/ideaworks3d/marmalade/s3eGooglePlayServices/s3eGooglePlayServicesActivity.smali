.class public Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;
.super Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;
.source "s3eGooglePlayServicesActivity.java"


# static fields
.field private static final RC_RESOLVE:I = 0x1388

.field private static final RC_UNUSED:I = 0x1389

.field private static S3EGOOGLEPLAYSERVICES_ERROR_LOAD_ACHIEVEMENTS:I = 0x0

.field private static S3EGOOGLEPLAYSERVICES_ERROR_LOAD_CURRENT_PLAYER_LEADERBOARD_SCORE:I = 0x0

.field private static S3EGOOGLEPLAYSERVICES_ERROR_LOAD_PLAYER_CENTERED_SCORES:I = 0x0

.field private static S3EGOOGLEPLAYSERVICES_ERROR_LOAD_TOP_SCORES:I = 0x0

.field private static S3EGOOGLEPLAYSERVICES_ERROR_SIGNING_IN:I = 0x0

.field private static S3EGOOGLEPLAYSERVICES_ERROR_SUBMIT_SCORE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "s3eGooglePlayGamesActivity"

.field public static singleton:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->singleton:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_LOAD_ACHIEVEMENTS:I

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_LOAD_CURRENT_PLAYER_LEADERBOARD_SCORE:I

    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_LOAD_PLAYER_CENTERED_SCORES:I

    .line 49
    const/4 v0, 0x3

    sput v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_LOAD_TOP_SCORES:I

    .line 50
    const/4 v0, 0x4

    sput v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_SUBMIT_SCORE:I

    .line 51
    const/4 v0, 0x5

    sput v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_SIGNING_IN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000([Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayAchievement;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_AchievementsLoadedCallback([Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayAchievement;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_LOAD_ACHIEVEMENTS:I

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_LOAD_TOP_SCORES:I

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_ScoreSubmittedCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_SUBMIT_SCORE:I

    return v0
.end method

.method static synthetic access$200(I)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_ErrorCallback(I)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_AchievementUnlockedCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_AchievementRevealedCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_LOAD_CURRENT_PLAYER_LEADERBOARD_SCORE:I

    return v0
.end method

.method static synthetic access$600(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboardScore;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_CurrentPlayerLeaderboardScoreLoadedCallback(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboardScore;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboard;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_PlayerCenteredScoresLoadedCallback(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboard;)V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_LOAD_PLAYER_CENTERED_SCORES:I

    return v0
.end method

.method static synthetic access$900(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboard;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_TopScoresLoadedCallback(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboard;)V

    return-void
.end method

.method private static native native_AchievementRevealedCallback(Ljava/lang/String;)V
.end method

.method private static native native_AchievementUnlockedCallback(Ljava/lang/String;)V
.end method

.method private static native native_AchievementsLoadedCallback([Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayAchievement;)V
.end method

.method private static native native_CurrentPlayerLeaderboardScoreLoadedCallback(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboardScore;)V
.end method

.method private static native native_ErrorCallback(I)V
.end method

.method private static native native_PlayerCenteredScoresLoadedCallback(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboard;)V
.end method

.method private static native native_ScoreSubmittedCallback(Ljava/lang/String;)V
.end method

.method private static native native_SignInCallback()V
.end method

.method private static native native_SignOutCallback()V
.end method

.method private static native native_TopScoresLoadedCallback(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayLeaderboard;)V
.end method


# virtual methods
.method public incrementAchievement(Ljava/lang/String;IZ)Z
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    if-nez p3, :cond_0

    .line 178
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 194
    :goto_0
    const/4 v0, 0x1

    .line 196
    :goto_1
    return v0

    .line 182
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->incrementImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$3;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$3;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public loadAchievements()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return v0

    .line 117
    :cond_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/achievement/Achievements;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$1;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$1;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadCurrentPlayerLeaderboardScore(Ljava/lang/String;II)Z
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    .line 248
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 249
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$5;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$5;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 272
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadPlayerCenteredScores(Ljava/lang/String;IIIZ)Z
    .locals 7

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 278
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$6;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$6;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 294
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadTopScores(Ljava/lang/String;IIIZ)Z
    .locals 7

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    .line 300
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->loadTopScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$7;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$7;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 316
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "onCreate called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sput-object p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->singleton:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;

    .line 70
    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onSignInFailed()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "onSignInFailed called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->hasSignInError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->mHelper:Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/GameHelper;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    sget v0, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->S3EGOOGLEPLAYSERVICES_ERROR_SIGNING_IN:I

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_ErrorCallback(I)V

    .line 92
    :cond_1
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "onSignInSucceeded called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_SignInCallback()V

    .line 99
    return-void
.end method

.method public onSignOut()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "onSignOut called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->native_SignOutCallback()V

    .line 106
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/BaseGameActivity;->onStart()V

    .line 77
    return-void
.end method

.method public revealAchievement(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    if-nez p2, :cond_0

    .line 204
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->reveal(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 220
    :goto_0
    const/4 v0, 0x1

    .line 222
    :goto_1
    return v0

    .line 208
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->revealImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$4;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$4;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showAchievements()Z
    .locals 3

    .prologue
    .line 226
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "showAchievements"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1389

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 233
    :cond_0
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "Achivements not available"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAllLeaderboards()Z
    .locals 3

    .prologue
    .line 348
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "showLeaderboards"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1389

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 358
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 355
    :cond_0
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "Leaderboards not available"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLeaderboard(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 362
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "showLeaderboards"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1389

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 372
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 369
    :cond_0
    const-string v0, "s3eGooglePlayGamesActivity"

    const-string v1, "Leaderboards not available"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public submitScore(Ljava/lang/String;IZ)Z
    .locals 4

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    .line 322
    :cond_0
    if-nez p3, :cond_1

    .line 324
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    int-to-long v2, p2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 344
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    int-to-long v2, p2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$8;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$8;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_1
.end method

.method public unlockAchievement(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    if-nez p2, :cond_0

    .line 152
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 168
    :goto_0
    const/4 v0, 0x1

    .line 170
    :goto_1
    return v0

    .line 156
    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-virtual {p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlockImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$2;

    invoke-direct {v1, p0}, Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity$2;-><init>(Lcom/ideaworks3d/marmalade/s3eGooglePlayServices/s3eGooglePlayServicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
