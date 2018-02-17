.class Ls3eWebView$InputHack;
.super Ljava/lang/Object;
.source "s3eWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3eWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputHack"
.end annotation


# instance fields
.field m_Enabled:Z

.field private m_Field:Ljava/lang/reflect/Field;

.field private m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Ls3eWebView;


# direct methods
.method public constructor <init>(Ls3eWebView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 170
    iput-object p1, p0, Ls3eWebView$InputHack;->this$0:Ls3eWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const-string v1, "AndroidWebViewKeyboardProtect"

    invoke-static {v1, v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->s3eConfigGet(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ls3eWebView$InputHack;->m_Enabled:Z

    .line 172
    iput-object v2, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    .line 173
    iput-object v2, p0, Ls3eWebView$InputHack;->m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 174
    return-void
.end method


# virtual methods
.method public DisableInputHandler()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-boolean v0, p0, Ls3eWebView$InputHack;->m_Enabled:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 179
    :cond_0
    iput-object v1, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    .line 180
    iput-object v1, p0, Ls3eWebView$InputHack;->m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 183
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "mInstance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    .line 184
    iget-object v0, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 188
    :cond_1
    iget-object v0, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Ls3eWebView$InputHack;->m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 189
    iget-object v0, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not disable InputMethodManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EnableInputHandler()V
    .locals 3

    .prologue
    .line 198
    iget-boolean v0, p0, Ls3eWebView$InputHack;->m_Enabled:Z

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls3eWebView$InputHack;->m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 204
    :try_start_0
    iget-object v0, p0, Ls3eWebView$InputHack;->m_Field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    iget-object v2, p0, Ls3eWebView$InputHack;->m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not restore InputMethodManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "m_Field or m_InputMethodManager was null"

    invoke-static {v0}, Lcom/ideaworks3d/marmalade/LoaderAPI;->trace(Ljava/lang/String;)V

    goto :goto_0
.end method
