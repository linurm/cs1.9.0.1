.class public final Lzj/zfenlly/gua/activity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# static fields
.field public static startVpn:Z

.field public static vpnAct:Ljava/lang/String;

.field public static vpnPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "org.getlantern.lantern"

    sput-object v0, Lzj/zfenlly/gua/activity/Vpn;->vpnPkg:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "org.lantern.activity.LanternMainActivity_"

    sput-object v0, Lzj/zfenlly/gua/activity/Vpn;->vpnAct:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lzj/zfenlly/gua/activity/Vpn;->startVpn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
