.class public Lzj/zfenlly/gua/MPermissions;
.super Ljava/lang/Object;
.source "MPermissions.java"


# static fields
.field public static final OVERLAY_PERMISSION_REQ_CODE:I = 0x302f

.field public static final WRITE_EXTERNAL:I = 0x2

.field static floatWinIntent:Landroid/content/Intent;

.field public static request_permission:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x99

    sput v0, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lzj/zfenlly/gua/MPermissions;->floatWinIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static askForPermission(Landroid/app/Activity;)V
    .locals 4
    .param p0, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lzj/zfenlly/gua/MPermissions;->floatWinIntent:Landroid/content/Intent;

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 142
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const-string/jumbo v1, "\u5f53\u524d\u65e0\u6743\u9650\uff0c\u8bf7\u6388\u6743\uff01"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ztag"

    const-string/jumbo v2, "request overlay permission"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v1, 0x302f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string/jumbo v1, "ztag"

    const-string/jumbo v2, "can draw overlay permission"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v1, Lzj/zfenlly/gua/MPermissions;->floatWinIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 64
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 66
    goto :goto_0

    .line 63
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static getDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "needRequestPermissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 81
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static onPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    sget v0, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    if-ne p1, v0, :cond_0

    .line 168
    invoke-static {p3}, Lzj/zfenlly/gua/MPermissions;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    sget v0, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    invoke-static {p0, v0}, Lzj/zfenlly/gua/MPermissions;->permissionSuccess(Landroid/app/Activity;I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    sget v0, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    invoke-static {v0}, Lzj/zfenlly/gua/MPermissions;->permissionFail(I)V

    goto :goto_0
.end method

.method public static onResult(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "mAcitivty"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 126
    const/16 v0, 0x302f

    if-ne p1, v0, :cond_0

    .line 127
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const-string/jumbo v0, "ztag"

    const-string/jumbo v1, "draw overlay permission not granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string/jumbo v0, "ztag"

    const-string/jumbo v1, "draw overlay permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lzj/zfenlly/gua/MPermissions;->floatWinIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static permissionFail(I)V
    .locals 3
    .param p0, "requestCode"    # I

    .prologue
    .line 161
    const-string/jumbo v0, "ztag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u83b7\u53d6\u6743\u9650\u5931\u8d25="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public static permissionSuccess(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 110
    const-string/jumbo v0, "ztag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u83b7\u53d6\u6743\u9650\u6210\u529f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-static {p0}, Lzj/zfenlly/gua/MPermissions;->askForPermission(Landroid/app/Activity;)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .locals 3
    .param p0, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lzj/zfenlly/gua/MPermissions;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 3
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 37
    sput p2, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    .line 38
    invoke-static {p0, p1}, Lzj/zfenlly/gua/MPermissions;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sget v1, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    invoke-static {p0, v1}, Lzj/zfenlly/gua/MPermissions;->permissionSuccess(Landroid/app/Activity;I)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0, p1}, Lzj/zfenlly/gua/MPermissions;->getDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "needPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget v2, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static verifyPermissions([I)Z
    .locals 4
    .param p0, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 96
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    .line 97
    .local v0, "grantResult":I
    if-eqz v0, :cond_0

    .line 101
    .end local v0    # "grantResult":I
    :goto_1
    return v1

    .line 96
    .restart local v0    # "grantResult":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "grantResult":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
