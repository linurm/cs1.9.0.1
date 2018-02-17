.class public Lcom/ideaworks3d/marmalade/NewIntentEvent;
.super Ljava/lang/Object;
.source "NewIntentEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;
    }
.end annotation


# instance fields
.field public final eventType:Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/NewIntentEvent;->eventType:Lcom/ideaworks3d/marmalade/NewIntentEvent$EventType;

    .line 14
    iput-object p2, p0, Lcom/ideaworks3d/marmalade/NewIntentEvent;->intent:Landroid/content/Intent;

    .line 15
    return-void
.end method
