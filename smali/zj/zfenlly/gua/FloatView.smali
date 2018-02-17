.class public Lzj/zfenlly/gua/FloatView;
.super Landroid/widget/ImageView;
.source "FloatView.java"


# static fields
.field public static i:I


# instance fields
.field private bClickable:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field public mLinearLayout:Landroid/widget/LinearLayout;

.field private mStartX:F

.field private mStartY:F

.field public mTouchX:F

.field public mTouchY:F

.field private t_down:Ljava/lang/Long;

.field private t_up:Ljava/lang/Long;

.field public windowManager:Landroid/view/WindowManager;

.field public windowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lzj/zfenlly/gua/FloatView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mLinearLayout"    # Landroid/widget/LinearLayout;
    .param p3, "mWindowManager"    # Landroid/view/WindowManager;
    .param p4, "wmParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lzj/zfenlly/gua/FloatView;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lzj/zfenlly/gua/FloatView;->windowManager:Landroid/view/WindowManager;

    .line 38
    iput-object p1, p0, Lzj/zfenlly/gua/FloatView;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lzj/zfenlly/gua/FloatView;->windowManager:Landroid/view/WindowManager;

    .line 40
    iput-object p2, p0, Lzj/zfenlly/gua/FloatView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object p4, p0, Lzj/zfenlly/gua/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 42
    return-void
.end method


# virtual methods
.method public isbClickable()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lzj/zfenlly/gua/FloatView;->bClickable:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, -0x3ee00000    # -10.0f

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/FloatView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 57
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 60
    .local v2, "statusBarHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->x:F

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    int-to-float v6, v2

    sub-float/2addr v5, v6

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->y:F

    .line 62
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v6, "rk3288"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    iget v5, p0, Lzj/zfenlly/gua/FloatView;->y:F

    iget-object v6, p0, Lzj/zfenlly/gua/FloatView;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->y:F

    .line 64
    iget v5, p0, Lzj/zfenlly/gua/FloatView;->x:F

    iget-object v6, p0, Lzj/zfenlly/gua/FloatView;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lzj/zfenlly/gua/FloatWinService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->x:F

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 108
    :cond_1
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 71
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->mTouchX:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->mTouchY:F

    .line 73
    iget v5, p0, Lzj/zfenlly/gua/FloatView;->x:F

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->mStartX:F

    .line 74
    iget v5, p0, Lzj/zfenlly/gua/FloatView;->y:F

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->mStartY:F

    .line 75
    const/4 v5, 0x0

    sput v5, Lzj/zfenlly/gua/FloatView;->i:I

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lzj/zfenlly/gua/FloatView;->t_down:Ljava/lang/Long;

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatView;->updateViewPosition()V

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p0}, Lzj/zfenlly/gua/FloatView;->updateViewPosition()V

    .line 91
    const/4 v5, 0x0

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->mTouchY:F

    iput v5, p0, Lzj/zfenlly/gua/FloatView;->mTouchX:F

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lzj/zfenlly/gua/FloatView;->t_up:Ljava/lang/Long;

    .line 96
    iget v5, p0, Lzj/zfenlly/gua/FloatView;->x:F

    iget v6, p0, Lzj/zfenlly/gua/FloatView;->mStartX:F

    sub-float v1, v5, v6

    .line 97
    .local v1, "h":F
    iget v5, p0, Lzj/zfenlly/gua/FloatView;->y:F

    iget v6, p0, Lzj/zfenlly/gua/FloatView;->mStartY:F

    sub-float v4, v5, v6

    .line 98
    .local v4, "v":F
    cmpg-float v5, v1, v9

    if-gez v5, :cond_1

    cmpg-float v5, v4, v9

    if-gez v5, :cond_1

    cmpl-float v5, v1, v8

    if-lez v5, :cond_1

    cmpl-float v5, v4, v8

    if-lez v5, :cond_1

    .line 99
    iget-object v5, p0, Lzj/zfenlly/gua/FloatView;->t_up:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v5, p0, Lzj/zfenlly/gua/FloatView;->t_down:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 100
    .local v3, "t":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x32

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 101
    iget-object v5, p0, Lzj/zfenlly/gua/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_1

    .line 102
    iget-object v5, p0, Lzj/zfenlly/gua/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v5, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 113
    iput-object p1, p0, Lzj/zfenlly/gua/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 114
    return-void
.end method

.method public setbClickable(Z)V
    .locals 0
    .param p1, "bClickable"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lzj/zfenlly/gua/FloatView;->bClickable:Z

    .line 50
    return-void
.end method

.method public updateViewPosition()V
    .locals 3

    .prologue
    .line 117
    sget v0, Lzj/zfenlly/gua/FloatView;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lzj/zfenlly/gua/FloatView;->i:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lzj/zfenlly/gua/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lzj/zfenlly/gua/FloatView;->x:F

    iget v2, p0, Lzj/zfenlly/gua/FloatView;->mTouchX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 121
    iget-object v0, p0, Lzj/zfenlly/gua/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lzj/zfenlly/gua/FloatView;->y:F

    iget v2, p0, Lzj/zfenlly/gua/FloatView;->mTouchY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 122
    iget-object v0, p0, Lzj/zfenlly/gua/FloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/FloatView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_0
    return-void
.end method
