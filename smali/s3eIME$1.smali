.class Ls3eIME$1;
.super Ljava/lang/Object;
.source "s3eIME.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3eIME;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ls3eIME;


# direct methods
.method constructor <init>(Ls3eIME;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ls3eIME$1;->this$0:Ls3eIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 51
    iget-object v0, p0, Ls3eIME$1;->this$0:Ls3eIME;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v2}, Ls3eIME;->onKeyEventNative(II)Z

    .line 53
    :cond_0
    return v2
.end method
