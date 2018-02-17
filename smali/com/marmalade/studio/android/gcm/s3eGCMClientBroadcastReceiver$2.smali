.class Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "s3eGCMClientBroadcastReceiver.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;->doRegistrationCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extension_class:Ljava/lang/Class;

.field final synthetic val$registration_id:Ljava/lang/String;

.field final synthetic val$registration_method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;Ljava/lang/reflect/Method;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->this$0:Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver;

    iput-object p2, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$registration_method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$extension_class:Ljava/lang/Class;

    iput-object p4, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$registration_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 125
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$registration_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$registration_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$registration_method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$extension_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$context:Landroid/content/Context;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/marmalade/studio/android/gcm/s3eGCMClientBroadcastReceiver$2;->val$registration_id:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method
