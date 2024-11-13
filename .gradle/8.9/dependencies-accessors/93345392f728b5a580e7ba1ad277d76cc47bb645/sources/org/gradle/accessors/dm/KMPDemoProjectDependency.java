package org.gradle.accessors.dm;

import org.gradle.api.NonNullApi;
import org.gradle.api.artifacts.ProjectDependency;
import org.gradle.api.internal.artifacts.dependencies.ProjectDependencyInternal;
import org.gradle.api.internal.artifacts.DefaultProjectDependencyFactory;
import org.gradle.api.internal.artifacts.dsl.dependencies.ProjectFinder;
import org.gradle.api.internal.catalog.DelegatingProjectDependency;
import org.gradle.api.internal.catalog.TypeSafeProjectDependencyFactory;
import javax.inject.Inject;

@NonNullApi
public class KMPDemoProjectDependency extends DelegatingProjectDependency {

    @Inject
    public KMPDemoProjectDependency(TypeSafeProjectDependencyFactory factory, ProjectDependencyInternal delegate) {
        super(factory, delegate);
    }

    /**
     * Creates a project dependency on the project at path ":androidApp"
     */
    public AndroidAppProjectDependency getAndroidApp() { return new AndroidAppProjectDependency(getFactory(), create(":androidApp")); }

    /**
     * Creates a project dependency on the project at path ":iosApp"
     */
    public IosAppProjectDependency getIosApp() { return new IosAppProjectDependency(getFactory(), create(":iosApp")); }

    /**
     * Creates a project dependency on the project at path ":shared"
     */
    public SharedProjectDependency getShared() { return new SharedProjectDependency(getFactory(), create(":shared")); }

}
