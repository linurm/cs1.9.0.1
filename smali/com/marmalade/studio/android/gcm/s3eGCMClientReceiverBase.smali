.class public Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;
.super Landroid/content/BroadcastReceiver;
.source "s3eGCMClientReceiverBase.java"


# static fields
.field private static final PROPERTY_FILE:Ljava/lang/String; = "game_notification_prefs"

.field private static final PROPERTY_GAME_TITLE:Ljava/lang/String; = "game_title"

.field private static final PROPERTY_ICON_ID:Ljava/lang/String; = "icon_id"


# instance fields
.field protected m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;->m_Context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getGameTitle()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 26
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;->m_Context:Landroid/content/Context;

    const-string v2, "game_notification_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31
    const-string v2, "game_title"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 36
    :goto_0
    if-nez v0, :cond_0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 42
    iget-object v1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;->m_Context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 49
    :cond_0
    :goto_1
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    const-string v0, ""

    goto :goto_1

    .line 33
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected getIconId()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 54
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;->m_Context:Landroid/content/Context;

    const-string v2, "game_notification_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    const-string v2, "icon_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientReceiverBase;->m_Context:Landroid/content/Context;

    .line 22
    return-void
.end method
