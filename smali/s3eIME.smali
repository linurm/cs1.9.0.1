.class public Ls3eIME;
.super Ljava/lang/Object;
.source "s3eIME.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3eIME$s3eDummyView;
    }
.end annotation


# static fields
.field public static final BUFFER_LEN:I = 0x1

.field public static final BYPASS_IME:I = 0x3

.field public static final CURSOR_POS:I = 0x0

.field public static final SELECTION_END:I = 0x2

.field public static final SESSION_ACTIVE:I = 0x4


# instance fields
.field private m_Bypass:Z

.field private m_Editing:Z

.field private m_Pausing:Z

.field private m_View:Ls3eIME$s3eDummyView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v2, -0x1f4

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ls3eIME$s3eDummyView;

    invoke-direct {v0, p0}, Ls3eIME$s3eDummyView;-><init>(Ls3eIME;)V

    iput-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    .line 47
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    new-instance v1, Ls3eIME$1;

    invoke-direct {v1, p0}, Ls3eIME$1;-><init>(Ls3eIME;)V

    invoke-virtual {v0, v1}, Ls3eIME$s3eDummyView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v1, v2, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 60
    iget-object v2, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const-string v1, "Added view to view hierarchy"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iput-boolean v4, p0, Ls3eIME;->m_Bypass:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Ls3eIME;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Ls3eIME;->m_Editing:Z

    return v0
.end method


# virtual methods
.method public native bufferChanged()V
.end method

.method public native keyboardDismissed()V
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x43

    const/4 v2, 0x0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 130
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v2

    .line 133
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-boolean v0, p0, Ls3eIME;->m_Bypass:Z

    if-eqz v0, :cond_3

    .line 137
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 143
    :cond_2
    :goto_1
    iget-boolean v0, p0, Ls3eIME;->m_Editing:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Ls3eIME;->onKeyEventNative(II)Z

    goto :goto_0

    .line 140
    :cond_3
    if-eq p2, v3, :cond_2

    .line 141
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0, p2, p3}, Ls3eIME$s3eDummyView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 147
    :pswitch_1
    iget-boolean v0, p0, Ls3eIME;->m_Bypass:Z

    if-eqz v0, :cond_5

    .line 148
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v0, v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_View:Lcom/ideaworks3d/marmalade/LoaderView;

    invoke-virtual {v0, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 154
    :cond_4
    :goto_2
    iget-boolean v0, p0, Ls3eIME;->m_Editing:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p2, v2}, Ls3eIME;->onKeyEventNative(II)Z

    goto :goto_0

    .line 151
    :cond_5
    if-eq p2, v3, :cond_4

    .line 152
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0, p2, p3}, Ls3eIME$s3eDummyView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_2

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public native onKeyEventNative(II)Z
.end method

.method public s3eIMEEndSession()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-boolean v0, p0, Ls3eIME;->m_Editing:Z

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return v2

    .line 177
    :cond_0
    iput-boolean v2, p0, Ls3eIME;->m_Editing:Z

    .line 178
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->popKeyListener()Landroid/view/View$OnKeyListener;

    .line 179
    const-string v0, "Ending IME Session"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 181
    iget-object v1, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v1}, Ls3eIME$s3eDummyView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 182
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0}, Ls3eIME$s3eDummyView;->clearFocus()V

    goto :goto_0
.end method

.method public s3eIMEGetBuffer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0}, Ls3eIME$s3eDummyView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s3eIMEGetInt(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    const/4 v0, -0x1

    :cond_0
    :goto_1
    return v0

    .line 72
    :pswitch_0
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0}, Ls3eIME$s3eDummyView;->getSelectionStart()I

    move-result v0

    goto :goto_1

    .line 76
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Ls3eIME;->s3eIMEGetBuffer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :pswitch_2
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0}, Ls3eIME$s3eDummyView;->getSelectionEnd()I

    move-result v0

    goto :goto_1

    .line 85
    :pswitch_3
    iget-boolean v2, p0, Ls3eIME;->m_Bypass:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 87
    :pswitch_4
    iget-boolean v2, p0, Ls3eIME;->m_Editing:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public s3eIMESetBuffer(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0, p1}, Ls3eIME$s3eDummyView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ls3eIME$s3eDummyView;->setSelection(I)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public s3eIMESetInt(II)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    if-gez p2, :cond_0

    move v1, v0

    .line 115
    :goto_0
    return v1

    .line 95
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 115
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Ls3eIME;->s3eIMEGetBuffer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting cursor position to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (buffer len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 100
    if-le p2, v0, :cond_1

    .line 101
    const/4 v1, 0x2

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0}, Ls3eIME$s3eDummyView;->clearComposingText()V

    .line 103
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0, p2}, Ls3eIME$s3eDummyView;->setSelection(I)V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Ls3eIME;->s3eIMEGetBuffer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 107
    const/4 v1, 0x4

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0}, Ls3eIME$s3eDummyView;->clearComposingText()V

    .line 109
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0, p2}, Ls3eIME$s3eDummyView;->extendSelection(I)V

    goto :goto_0

    .line 112
    :pswitch_3
    if-eqz p2, :cond_3

    :goto_1
    iput-boolean v0, p0, Ls3eIME;->m_Bypass:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public s3eIMEStartSession()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 162
    const-string v1, "Starting IME Session"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 163
    iget-boolean v1, p0, Ls3eIME;->m_Editing:Z

    if-eqz v1, :cond_0

    .line 171
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->pushKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 166
    const-string v1, "Setting up view"

    invoke-static {v1}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    .line 167
    iput-boolean v0, p0, Ls3eIME;->m_Editing:Z

    .line 168
    iget-object v0, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    invoke-virtual {v0}, Ls3eIME$s3eDummyView;->requestFocus()Z

    .line 169
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 170
    iget-object v1, p0, Ls3eIME;->m_View:Ls3eIME$s3eDummyView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 171
    const/4 v0, 0x0

    goto :goto_0
.end method
