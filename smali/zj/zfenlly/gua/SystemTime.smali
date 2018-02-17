.class public Lzj/zfenlly/gua/SystemTime;
.super Ljava/lang/Object;
.source "SystemTime.java"


# static fields
.field public static minites:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput v0, Lzj/zfenlly/gua/SystemTime;->minites:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentTimeMillis()J
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lzj/zfenlly/gua/SystemTime;->minites:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static elapsedRealtime()J
    .locals 4

    .prologue
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget v2, Lzj/zfenlly/gua/SystemTime;->minites:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static nanoTime()J
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget v2, Lzj/zfenlly/gua/SystemTime;->minites:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static setTime(I)V
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 15
    sget v0, Lzj/zfenlly/gua/SystemTime;->minites:I

    add-int/2addr v0, p0

    sput v0, Lzj/zfenlly/gua/SystemTime;->minites:I

    .line 16
    return-void
.end method
