.class public Lzj/zfenlly/gua/NotifySound;
.super Ljava/lang/Object;
.source "NotifySound.java"


# static fields
.field static mContext:Landroid/content/Context;

.field public static mSoundPlayer:Landroid/media/SoundPool;

.field public static soundPlayUtils:Lzj/zfenlly/gua/NotifySound;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lzj/zfenlly/gua/NotifySound;->mSoundPlayer:Landroid/media/SoundPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)Lzj/zfenlly/gua/NotifySound;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 28
    sget-object v0, Lzj/zfenlly/gua/NotifySound;->soundPlayUtils:Lzj/zfenlly/gua/NotifySound;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lzj/zfenlly/gua/NotifySound;

    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    sput-object v0, Lzj/zfenlly/gua/NotifySound;->soundPlayUtils:Lzj/zfenlly/gua/NotifySound;

    .line 32
    :cond_0
    sput-object p0, Lzj/zfenlly/gua/NotifySound;->mContext:Landroid/content/Context;

    .line 33
    sget-object v0, Lzj/zfenlly/gua/NotifySound;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v1, Lzj/zfenlly/gua/NotifySound;->mContext:Landroid/content/Context;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->beep:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 34
    sget-object v0, Lzj/zfenlly/gua/NotifySound;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v1, Lzj/zfenlly/gua/NotifySound;->mContext:Landroid/content/Context;

    sget v2, Lzj/zfenlly/gua/RFile/Rfile;->nfcsuccess:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 35
    sget-object v0, Lzj/zfenlly/gua/NotifySound;->soundPlayUtils:Lzj/zfenlly/gua/NotifySound;

    return-object v0
.end method

.method public static play(I)V
    .locals 7
    .param p0, "soundID"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    sget-object v0, Lzj/zfenlly/gua/NotifySound;->mSoundPlayer:Landroid/media/SoundPool;

    move v1, p0

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 40
    return-void
.end method
