
Bullet Physics Library - http://bulletphysics.org - (C) Erwin Coumans
=====================================================================

* v2.79 (sep'16 2011). This update was prepared for Marmalade SDK by @zenoutJez
* *NOT LATEST VERSION* last checked was v2.80 (mar'5 2012).

* Updated to include collision begin/end callbacks !!! -> original patch by Promit (Bullet forums).

>>>>> MiniCL has *NOT* been included in the projects. Though the source files are there if you need them.

First use Bullet.mkb once to compile all required libs (.lib, .a) both debug and release.
From then on you can just use Bullet_library.mkf as a sub-project and #include <btBulletDynamicsCommon.h> for example.

Alternatively, use Bullet.mkf as a subproject - this obviously contains all .cpp files (zillions!), instead of the libs and headers.

I have tested on x86 (Marmalade simulator), and iOS (GCC). There are no demos included, though one can be arranged if required.

A few options are set throughout the .mkb and .mkf, disable these if you wish:

options
{
##	strict

	arm-cpu=6z
	arm-fpu=vfpv3

	optimise-speed
}


---------------

Implemented Promit's patch which is ideal for detecting when a collision has just began or ended (ideal for sound effects, triggers, ...).
Do something like the following:

	// At runtime we register the callbacks which were patched into the btPersistentManifold files.
	gCollisionStartedCallback = CollisionStarted;
	gCollisionEndedCallback = CollisionEnded;


// (The collision started callback, which we will put in our project)
static void CollisionStarted(btPersistentManifold* manifold)
{
	const btCollisionObject* obA = static_cast<btCollisionObject*>(manifold->getBody0());
	CActor* actorA = (CActor*)obA->getUserPointer();
	const btCollisionObject* obB = static_cast<btCollisionObject*>(manifold->getBody1());
	CActor* actorB = (CActor*)obB->getUserPointer();
	if(!actorA && !actorB)
		return;

	// Do what you want here, based on which actor has collided with which other actor...
	// for example, measure the relative velocity between both actors and play a sound effect.
}


// (This is Promit's original collision-ended callback - which I haven't been using but have applied his code/patch to the library)
static void CollisionEnded(btPersistentManifold* manifold)
{
/*	btCollisionObject* obA = static_cast<btCollisionObject*>(manifold->getBody0());
	btCollisionObject* obB = static_cast<btCollisionObject*>(manifold->getBody1());*/

/*	PhysicsComponent* phyA = (PhysicsComponent*) obA->getUserPointer();
	PhysicsComponent* phyB = (PhysicsComponent*) obB->getUserPointer();
	if(!phyA || !phyB)
		return;
   
	printf("Collision ended between: %s, %s.\n", phyA->_parent->Name.c_str(), phyB->_parent->Name.c_str());*/
}
