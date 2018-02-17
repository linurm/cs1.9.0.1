.class public Ls3eGCMClient;
.super Ljava/lang/Object;
.source "s3eGCMClient.java"


# static fields
.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "game_notification_prefs"

.field private static final PROPERTY_GAME_TITLE:Ljava/lang/String; = "game_title"

.field private static final PROPERTY_ICON_ID:Ljava/lang/String; = "icon_id"

.field private static final PROPERTY_ON_SERVER_EXPIRATION_TIME:Ljava/lang/String; = "on_server_expiration_time_ms"

.field private static final PROPERTY_REG_ID:Ljava/lang/String; = "registration_id"

.field private static final REGISTRATION_EXPIRY_TIME_MS:J = 0x240c8400L

.field private static final REGISTRATION_TRIALS:I = 0x3

.field private static m_Context:Landroid/content/Context;

.field private static m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private static m_RegId:Ljava/lang/String;

.field private static m_SenderId:Ljava/lang/String;

.field private static m_Trials:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Ls3eGCMClient;->m_Context:Landroid/content/Context;

    .line 61
    sput-object v0, Ls3eGCMClient;->m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 64
    const-string v0, ""

    sput-object v0, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Ls3eGCMClient;->m_SenderId:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput v0, Ls3eGCMClient;->m_Trials:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private getAppVersion(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 167
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Ls3eGCMClient;->m_Context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ls3eGCMClient;->m_Context:Landroid/content/Context;

    .line 280
    :cond_0
    sget-object v0, Ls3eGCMClient;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method private getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 179
    const-class v0, Ls3eGCMClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static native native_notificationCallback()V
.end method

.method private register()V
    .locals 4

    .prologue
    .line 209
    :try_start_0
    sget v0, Ls3eGCMClient;->m_Trials:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ls3eGCMClient;->m_Trials:I

    .line 211
    sget v0, Ls3eGCMClient;->m_Trials:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 214
    sget-object v0, Ls3eGCMClient;->m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Ls3eGCMClient;->m_SenderId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    .line 216
    sget-object v0, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    sput-object v0, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    .line 219
    :cond_0
    sget-object v0, Ls3eGCMClient;->m_Context:Landroid/content/Context;

    sget-object v1, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ls3eGCMClient;->saveRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    sget-object v0, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    sput-object v0, Ls3eGCMClient;->m_RegId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    invoke-direct {p0}, Ls3eGCMClient;->register()V

    goto :goto_0
.end method

.method private saveGameTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 250
    invoke-direct {p0}, Ls3eGCMClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 251
    const-string v1, "game_notification_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    const-string v1, "game_title"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method

.method private saveIconId(I)V
    .locals 3

    .prologue
    .line 264
    invoke-direct {p0}, Ls3eGCMClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 265
    const-string v1, "game_notification_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    const-string v1, "icon_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method

.method private saveRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 235
    invoke-direct {p0, p1}, Ls3eGCMClient;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    const-string v1, "registration_id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v1, "app_version"

    invoke-direct {p0, p1}, Ls3eGCMClient;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string v1, "on_server_expiration_time_ms"

    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method private setRegistrationId()V
    .locals 6

    .prologue
    .line 185
    sget-object v0, Ls3eGCMClient;->m_Context:Landroid/content/Context;

    invoke-direct {p0, v0}, Ls3eGCMClient;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    const-string v1, "registration_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v2, "app_version"

    const/high16 v3, -0x80000000

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 195
    const-string v3, "on_server_expiration_time_ms"

    const-wide/high16 v4, -0x8000000000000000L

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 197
    sget-object v0, Ls3eGCMClient;->m_Context:Landroid/content/Context;

    invoke-direct {p0, v0}, Ls3eGCMClient;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    if-ne v2, v0, :cond_0

    invoke-static {}, Lzj/zfenlly/gua/SystemTime;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 202
    sput-object v1, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public s3eGCMClientGetRegisterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    :try_start_0
    sput-object p1, Ls3eGCMClient;->m_SenderId:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ls3eGCMClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    sput-object v0, Ls3eGCMClient;->m_GCM:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 101
    invoke-direct {p0}, Ls3eGCMClient;->setRegistrationId()V

    .line 104
    sget-object v0, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Ls3eGCMClient;->m_Trials:I

    invoke-direct {p0}, Ls3eGCMClient;->register()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    sget-object v0, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public s3eGCMClientLocalNotificationClearAll()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public s3eGCMClientLocalNotificationEnable(Z)V
    .locals 0

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 335
    :cond_0
    return-void
.end method

.method public s3eGCMClientLocalNotificationSchedule(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 287
    const/16 v0, 0xd

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v2

    const-class v3, Lcom/marmalade/studio/android/gcm/s3eGCMClientLocalReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    const-string v2, "alarm_message"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v2, "requestCode"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, p2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 301
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    .line 302
    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 303
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 305
    const-string v0, "s3eGCMClientLocalNotificationSchedule: notification %08x %s in %d seconds"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public s3eGCMClientLocalNotificationUnschedule(I)V
    .locals 4

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    const-class v2, Lcom/marmalade/studio/android/gcm/s3eGCMClientLocalReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 313
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    .line 315
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 316
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 318
    const-string v0, "s3eGCMClientLocalNotificationUnschedule: cancelled %08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public s3eGCMClientNotificationReceived()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Ls3eGCMClient;->native_notificationCallback()V

    .line 158
    :cond_0
    return-void
.end method

.method public s3eGCMClientRegistrationReceived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Ls3eGCMClient;->saveRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    :cond_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    if-eqz v0, :cond_1

    .line 147
    sput-object p2, Ls3eGCMClient;->m_RegId:Ljava/lang/String;

    .line 149
    :cond_1
    return-void
.end method

.method public s3eGCMClientSetAppData(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "s3eGCMClientSetAppData"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Ls3eGCMClient;->saveGameTitle(Ljava/lang/String;)V

    .line 80
    const-string v0, "..game title set"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p2}, Ls3eGCMClient;->saveIconId(I)V

    .line 82
    const-string v0, "..icon id set, all done"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public s3eGCMClientUnregisterId()V
    .locals 1

    .prologue
    .line 119
    :try_start_0
    invoke-direct {p0}, Ls3eGCMClient;->getContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method
