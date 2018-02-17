.class Lcom/android/mainactivity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mainactivity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mainactivity/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mainactivity/MainActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v9, -0x2

    const/4 v4, 0x0

    .line 119
    .line 124
    :try_start_0
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 125
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "show_loading_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 126
    :try_start_1
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "top_align_loading_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 127
    :try_start_2
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "loading_text_margin"

    iget-object v8, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->loadingTextMargin:I
    invoke-static {v8}, Lcom/android/mainactivity/MainActivity;->access$000(Lcom/android/mainactivity/MainActivity;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/mainactivity/MainActivity;->loadingTextMargin:I
    invoke-static {v0, v6}, Lcom/android/mainactivity/MainActivity;->access$002(Lcom/android/mainactivity/MainActivity;I)I

    .line 128
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "show_spinner"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    .line 129
    :try_start_3
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "loading_text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    iget-object v7, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "loop_loading_text"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/android/mainactivity/MainActivity;->loopLoadingText:Z

    .line 132
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/mainactivity/MainActivity;->loadingMessages:[Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 139
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    new-instance v6, Landroid/widget/ImageView;

    sget-object v7, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;
    invoke-static {v5, v6}, Lcom/android/mainactivity/MainActivity;->access$102(Lcom/android/mainactivity/MainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 140
    iget-object v5, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/mainactivity/MainActivity;->access$100(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020001

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 141
    iget-object v5, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/mainactivity/MainActivity;->access$100(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    sget-object v5, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v6, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_ImgView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/mainactivity/MainActivity;->access$100(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v6

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Lcom/ideaworks3d/marmalade/LoaderActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v5, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    new-instance v6, Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/mainactivity/MainActivity;->m_Spinner:Landroid/widget/ProgressBar;
    invoke-static {v5, v6}, Lcom/android/mainactivity/MainActivity;->access$202(Lcom/android/mainactivity/MainActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 146
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    invoke-virtual {v5, v4, v4, v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    iget-object v6, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_Spinner:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/android/mainactivity/MainActivity;->access$200(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v5, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_Spinner:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/android/mainactivity/MainActivity;->access$200(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setId(I)V

    .line 153
    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_Spinner:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$200(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0, v5}, Lcom/android/mainactivity/MainActivity;->access$302(Lcom/android/mainactivity/MainActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 158
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$300(Lcom/android/mainactivity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v5, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_Spinner:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/android/mainactivity/MainActivity;->access$200(Lcom/android/mainactivity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    if-eqz v2, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/mainactivity/MainActivity;->access$402(Lcom/android/mainactivity/MainActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$400(Lcom/android/mainactivity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$400(Lcom/android/mainactivity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$400(Lcom/android/mainactivity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0xa

    const/16 v5, 0xa

    invoke-virtual {v0, v11, v2, v11, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 167
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 168
    const/16 v2, 0xc8

    const/16 v5, 0x32

    const/16 v6, 0x32

    const/16 v7, 0x32

    invoke-static {v2, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 169
    iget-object v2, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mainactivity/MainActivity;->access$400(Lcom/android/mainactivity/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->loadingTextMargin:I
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$000(Lcom/android/mainactivity/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$400(Lcom/android/mainactivity/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mainactivity/MainActivity;->access$300(Lcom/android/mainactivity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_loadingMessage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$400(Lcom/android/mainactivity/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/mainactivity/MainActivity;->access$502(Lcom/android/mainactivity/MainActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/android/mainactivity/MainActivity$1$1;

    invoke-direct {v0, p0}, Lcom/android/mainactivity/MainActivity$1$1;-><init>(Lcom/android/mainactivity/MainActivity$1;)V

    .line 200
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->timerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$500(Lcom/android/mainactivity/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :cond_2
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->m_rLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$300(Lcom/android/mainactivity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/ideaworks3d/marmalade/LoaderActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    check-cast v0, Lcom/android/mainactivity/MainActivity;

    .line 209
    :try_start_4
    invoke-virtual {v0}, Lcom/android/mainactivity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mainactivity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 210
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 211
    const-string v2, "enable_profiler"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 212
    if-eqz v1, :cond_3

    .line 213
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    const/16 v2, 0x64

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 216
    new-instance v2, Landroid/widget/Button;

    sget-object v3, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 217
    const-string v3, "start Profiler"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v3, Lcom/android/mainactivity/MainActivity$1$2;

    invoke-direct {v3, p0, v0}, Lcom/android/mainactivity/MainActivity$1$2;-><init>(Lcom/android/mainactivity/MainActivity$1;Lcom/android/mainactivity/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {v0, v2, v1}, Lcom/android/mainactivity/MainActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 228
    :cond_3
    :goto_2
    return-void

    .line 177
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    iget-object v1, p0, Lcom/android/mainactivity/MainActivity$1;->this$0:Lcom/android/mainactivity/MainActivity;

    # getter for: Lcom/android/mainactivity/MainActivity;->loadingTextMargin:I
    invoke-static {v1}, Lcom/android/mainactivity/MainActivity;->access$000(Lcom/android/mainactivity/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 226
    :catch_0
    move-exception v0

    goto :goto_2

    .line 135
    :catch_1
    move-exception v0

    move v0, v3

    move v1, v4

    move v2, v4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v0, v3

    move v1, v4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :catch_4
    move-exception v5

    goto/16 :goto_0
.end method
