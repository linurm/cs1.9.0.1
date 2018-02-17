.class Ls3eIME$s3eDummyView;
.super Landroid/widget/EditText;
.source "s3eIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3eIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "s3eDummyView"
.end annotation


# instance fields
.field private dummy:Landroid/graphics/Canvas;

.field final synthetic this$0:Ls3eIME;


# direct methods
.method public constructor <init>(Ls3eIME;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 189
    iput-object p1, p0, Ls3eIME$s3eDummyView;->this$0:Ls3eIME;

    .line 190
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {p0, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Ls3eIME$s3eDummyView;->dummy:Landroid/graphics/Canvas;

    .line 191
    const-string v0, "Created s3eDummyView"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, v1}, Ls3eIME$s3eDummyView;->setFocusable(Z)V

    .line 193
    invoke-virtual {p0, v1}, Ls3eIME$s3eDummyView;->setWillNotDraw(Z)V

    .line 194
    const v0, 0x98001

    invoke-virtual {p0, v0}, Ls3eIME$s3eDummyView;->setRawInputType(I)V

    .line 196
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Ls3eIME$s3eDummyView;->setImeOptions(I)V

    .line 197
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 220
    const-string v0, "calling onDraw with dummy"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Ls3eIME$s3eDummyView;->dummy:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyPreIme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 203
    iget-object v0, p0, Ls3eIME$s3eDummyView;->this$0:Ls3eIME;

    # getter for: Ls3eIME;->m_Editing:Z
    invoke-static {v0}, Ls3eIME;->access$000(Ls3eIME;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Ls3eIME$s3eDummyView;->this$0:Ls3eIME;

    invoke-virtual {v0}, Ls3eIME;->keyboardDismissed()V

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    const/16 v0, 0x190

    .line 225
    invoke-virtual {p0, v0, v0}, Ls3eIME$s3eDummyView;->setMeasuredDimension(II)V

    .line 226
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMMITED TEXT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls3eIME$s3eDummyView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 212
    if-nez p3, :cond_1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Ls3eIME$s3eDummyView;->this$0:Ls3eIME;

    const/16 v1, 0x42

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls3eIME;->onKeyEventNative(II)Z

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Ls3eIME$s3eDummyView;->this$0:Ls3eIME;

    # getter for: Ls3eIME;->m_Editing:Z
    invoke-static {v0}, Ls3eIME;->access$000(Ls3eIME;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Ls3eIME$s3eDummyView;->this$0:Ls3eIME;

    invoke-virtual {v0}, Ls3eIME;->bufferChanged()V

    goto :goto_0
.end method
